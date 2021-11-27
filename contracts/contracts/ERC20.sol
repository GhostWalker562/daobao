pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract WMATICToken is ERC20 {
    constructor() ERC20("Wrapped Matic", "WMATIC") {
        _mint(
            0xfE64A36B1465dfAC28E93ADD6d8C5eCca816a7D0,
            1000000 * (10**uint256(decimals()))
        );
    }
}
