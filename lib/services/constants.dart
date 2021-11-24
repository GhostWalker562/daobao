const String kMumbaiAlchemy =
    'https://polygon-mumbai.g.alchemy.com/v2/eb606PcUHxu8IV4HKL6kLPlidrk-bi5N';

const List<int> supportedChains = [80001];

const String kDao = '0x6658c91665755e41175482E475De3326540C4ce7';
const String kDaobao = '0x1CB35BBc90835fC447Eb07a24E1eF19a910F7A7c';
const String kWMATIC = '0x86652c1301843B4E06fBfbBDaA6849266fb2b5e7';

String getAlchemyLink(int chainId) {
  switch (chainId) {
    case 80001:
      return kMumbaiAlchemy;
  }
  return kMumbaiAlchemy;
}

const daoAbi = [
  "function stake() payable public",
  "function withdraw()",
  "function removeIndex(string[] arrayname, uint index)",
  "function submitModuleProposal(string calldata id, string  _data, uint _indicator)",
  "function vote(string calldata id, bool value)",
  "function getLiveProposals() view returns(string[] )",
  "function getProposalsHistory() view returns(string[] )",
  "function getActiveProposals() external view returns(string[] )",
  "function getProposalInfo(string calldata str) view returns(Proposal)",
  'function getMembers(address addy) view returns(bool) '
];
