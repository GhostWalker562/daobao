pragma solidity ^0.8.4;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./Token.sol";
import "@chainlink/contracts/src/v0.8/VRFConsumerBase.sol";

contract backend is Ownable, VRFConsumerBase {
    mapping (address => mapping(string => bool)) Voted;
    mapping (string => Proposal) ProposalInfo;
    mapping (string => bool) PresenceCheck;
    mapping (string => uint) ArrayIndex;
    mapping (address => bool) Members;
    mapping (address => uint) AmountStaked;
    mapping (uint => string) UID;

    enum Indicator {Threshold, Quorum, Locktime, ModuleAdded, ModuleRemoved}
    enum Status {Passed, Failed, InProgress, Removed}
    
    ERC20 public WMATIC;

    /**
    WMATIC MAINNET: 0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270
    WMATIC TESTNET: 0x86652c1301843B4E06fBfbBDaA6849266fb2b5e7
     */

    uint uniqueID = 0;
    uint activeprops;
    uint threshold; // in base currency
    uint locktime;
    uint quorum; // 0 -> 100
    uint randomResult;
    uint fee; 
    bytes32 keyHash;
    Token minting;
    string mediateRandomness; // id of Proposal that is being decided.
    uint mediateTimestamp; // block.timestamp at decision when randomness is called.
    bool winnerChosen;

    struct Proposal { // name of proposal will be Proposal ID // CID can be passed as a string
        string data;
        uint data1; // for locktime,threshold,quorum.
        Indicator indicator;
        uint end;
        address[] voters;
        Status status;
        uint forvotes;
        uint totalvotes;
        uint quorumsnapshot;
    }

    string[] ActiveProposals;
    string[] LiveProposals;
    string[] History;

    event StakeSubmitted (address sender);
    event VoteSubmitted(address sender, string id, bool value);
    event ProposalAccepted(string id);
    event ProposalRejected(string id);
    event ThresholdChanged(uint newThreshold);
    event QuorumChanged(uint newQuorum);
    event LocktimeChanged(uint newLocktime);
    event ModuleAdded(string id);
    event ModuleRemoved(string id);
    event Winner(address thewinner);

    constructor(uint _threshold, uint _locktime, uint _quorum) VRFConsumerBase(0x8C7382F9D8f56b33781fE506E897a4F1e2d17255, 
        0x326C977E6efc84E512bB9C30f76E30c160eD06FB) {
        threshold = _threshold * (10 ** 18); 
        locktime = _locktime;
        quorum = _quorum / 100;
        keyHash = 0x6e75b569a01ef56d18cab6a8e71e6600d6ce853834d4a5748b720d06f878b3a4;
        fee = 0.0001 * 10 ** 18; // 0.0001 LINK
        WMATIC = ERC20(0x86652c1301843B4E06fBfbBDaA6849266fb2b5e7);
    }
        /**
    MUMBAI TESTNET
    LINK Token	0x326C977E6efc84E512bB9C30f76E30c160eD06FB
    VRF Coordinator	0x8C7382F9D8f56b33781fE506E897a4F1e2d17255
    Key Hash	0x6e75b569a01ef56d18cab6a8e71e6600d6ce853834d4a5748b720d06f878b3a4
    Fee	0.0001 LINK
    
    it's (coordinator, link token)
    keyhash
    fee

    MATIC MAINNET
    LINK Token	0xb0897686c545045aFc77CF20eC7A532E3120E0F1
    VRF Coordinator	0x3d2341ADb2D31f1c5530cDC622016af293177AE0
    Key Hash	0xf86195cf7690c55907b2b611ebb7343a6f649bff128701cc542f0569e2c549da
    Fee	0.0001 LINK
     */

    modifier onlyMember() {
        require(Members[msg.sender] == true, 'not a member');
        _;
    }

    function mintingContract(Token _minting) external onlyOwner {
        minting = _minting;
    }
    
    function stake() external {
        require(Members[msg.sender] == false, 'already staked');
        require(WMATIC.transferFrom(msg.sender, address(this), threshold), "transfer required"); // approval must be done first
        AmountStaked[msg.sender] = threshold;
        Members[msg.sender] = true;
        minting.mintRequest(msg.sender);
        emit StakeSubmitted(msg.sender);
    }

    function withdraw() external onlyMember {
        minting.burnRequest(msg.sender);
        Members[msg.sender] = false;
        uint transfervalue = AmountStaked[msg.sender];
        AmountStaked[msg.sender] = 0;
        WMATIC.transfer(msg.sender, transfervalue);
    }

    function removeIndex(string[] storage arrayname, uint index) internal {
        for (uint i = index; i < arrayname.length - 1; i++) {
            arrayname[i] = arrayname[i + 1];
        }
        arrayname.pop();
        changeIndex(arrayname, index);
    }

    function changeIndex(string[] storage arrayname, uint index) internal {
        for (uint i = index; i < arrayname.length; i++) {
            ArrayIndex[arrayname[i]] = ArrayIndex[arrayname[i]] - 1;
        }
    }

    function submitModuleProposal(string calldata id, string memory _data, Indicator _indicator) external onlyMember {
        require(activeprops < 3, "already 3 active proposals");
        require(uint8(_indicator) == 3 || uint8(_indicator) == 4, "invalid indicator");
        require(PresenceCheck[id] == false, 'choose new name');
        PresenceCheck[id] = true;
        uint _end = block.timestamp + (60 * locktime); // changed to minutes for testing
        uint _quorumsnapshot = quorum;
        ActiveProposals.push(id);
        ProposalInfo[id].data = _data;
        ProposalInfo[id].quorumsnapshot = _quorumsnapshot;
        ProposalInfo[id].end = _end;
        ProposalInfo[id].status = Status.InProgress;
        ProposalInfo[id].indicator = _indicator;
        ProposalInfo[id].forvotes = 0;
        ProposalInfo[id].totalvotes = 0;
        ArrayIndex[id] = activeprops;
        activeprops++;
        UID[uniqueID] = id;
        uniqueID++;
    }

    function submitSettingsProposal(string calldata id, uint _data, Indicator _indicator) external onlyMember {
        require(activeprops < 3, "already 3 active proposals");
        require(uint8(_indicator) == 0 || uint8(_indicator) == 1 || uint8(_indicator) == 2 , "invalid indicator");
        require(PresenceCheck[id] == false, 'choose new name - for quorum, locktime, or threshold: make name unique');
        PresenceCheck[id] = true;
        uint _end = block.timestamp + (60 * locktime); // changed
        uint _quorumsnapshot = quorum;
        ActiveProposals.push(id);
        ProposalInfo[id].data1 = _data;
        ProposalInfo[id].quorumsnapshot = _quorumsnapshot;
        ProposalInfo[id].end = _end;
        ProposalInfo[id].status = Status.InProgress;
        ProposalInfo[id].indicator = _indicator;
        ProposalInfo[id].forvotes = 0;
        ProposalInfo[id].totalvotes = 0;
        ArrayIndex[id] = activeprops;
        activeprops++;
        UID[uniqueID] = id;
        uniqueID++;
    }

    function vote(string calldata id, bool value) external onlyMember {
        require(Voted[msg.sender][id] == false, "already voted");
        require(ProposalInfo[id].status == Status.InProgress, "not in progress");
        Voted[msg.sender][id] = true;
        ProposalInfo[id].totalvotes++;
        if (value == true) {
            ProposalInfo[id].forvotes++;
        }
        ProposalInfo[id].voters.push(msg.sender);
        emit VoteSubmitted(msg.sender, id, value);
    }

    function decideProposal(string calldata id) external onlyMember {
        require(ProposalInfo[id].status == Status.InProgress, "not in progress");
        require(block.timestamp > ProposalInfo[id].end, "proposal in progress");
        uint forvotes = ProposalInfo[id].forvotes * 100;
        uint totalvotes = ProposalInfo[id].totalvotes * 100;
        uint overcome = (totalvotes / 50) * (ProposalInfo[id].quorumsnapshot / 2);
        if (forvotes > overcome) {
            ProposalInfo[id].status = Status.Passed;
            settleProposal(id);
            History.push(id);
            emit ProposalAccepted(id);
            getRandomNumber();
            mediateRandomness = id;
            mediateTimestamp = block.timestamp;
            winnerChosen = false;
        } else {
            ProposalInfo[id].status = Status.Failed;
            emit ProposalRejected(id);
            History.push(id);
        }
        uint index = ArrayIndex[id];
        removeIndex(ActiveProposals, index);
        activeprops--;
    }
    
    function settleProposal(string calldata id) internal {
        if (ProposalInfo[id].indicator == Indicator.Threshold) {
            threshold = ProposalInfo[id].data1 * (10 ** 18); // valid check
            emit ThresholdChanged(threshold);
        }
        if (ProposalInfo[id].indicator == Indicator.Quorum) {
            quorum = ProposalInfo[id].data1;
            emit QuorumChanged(quorum);
        }
        if (ProposalInfo[id].indicator == Indicator.Locktime) {
            locktime = ProposalInfo[id].data1;
            emit LocktimeChanged(locktime);
        }
        if (ProposalInfo[id].indicator == Indicator.ModuleAdded) {
            LiveProposals.push(id);
            emit ModuleAdded(id);
        }
        if (ProposalInfo[id].indicator == Indicator.ModuleRemoved) {
            ProposalInfo[id].data = "none"; // null?
            ProposalInfo[id].status = Status.Removed;
            emit ModuleRemoved(id);
        }
    }

    function getRandomNumber() public returns (bytes32 requestID) {
        require(LINK.balanceOf(address(this)) >= fee, "Not enough LINK"); //.1
        return requestRandomness(keyHash, fee);
    }

    function fulfillRandomness(bytes32 requestId, uint256 randomness) internal override {
        randomResult = randomness;
    }

    function decideWinner() external onlyMember {
        require(ProposalInfo[mediateRandomness].status == Status.Passed || ProposalInfo[mediateRandomness].status == Status.Failed, "Proposal in progress");
        require(winnerChosen == false, "winner has already been chosen");
        require(block.timestamp > mediateTimestamp + 30, "wait 30 seconds after deciding proposal");
        winnerChosen = true;
        uint random = randomResult % ProposalInfo[mediateRandomness].totalvotes;
        address winner = ProposalInfo[mediateRandomness].voters[random];
        emit Winner(winner);
    }

    function withdrawLink() external onlyOwner {
        LINK.transfer(msg.sender, LINK.balanceOf((address(this))));
    }

    function getLiveProposals() external view returns(string[] memory) {
        return LiveProposals;
    }

    function getProposalsHistory() external view returns(string[] memory) {
        return History;
    }

    function getActiveProposals() external view returns(string[] memory) {
        return ActiveProposals;
    }

    function getVoted(address addy, string calldata str) external view returns(bool) {
        return Voted[addy][str];
    }

    function getProposalInfo(string calldata str) external view returns(Proposal memory) {
        return ProposalInfo[str];
    }

    function getPresenceCheck(string calldata str) external view returns(bool) {
        return PresenceCheck[str];
    }

    function getArrayIndex(string calldata str) external view returns(uint) {
        return ArrayIndex[str];
    }

    function getMembers(address addy) external view returns(bool) {
        return Members[addy];
    }

    function getAmountStaked(address addy) external view returns(uint) {
        return AmountStaked[addy];
    }

    function UIDtoProposalName(uint num) external view returns (string memory) {
        return UID[num];
    }   
}