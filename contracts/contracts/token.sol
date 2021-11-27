pragma solidity ^0.8.4;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DaobaoToken is ERC20, ERC20Burnable, Pausable, Ownable {
    address main;

    event Minted(address minter, uint value);
    event Burned(address minter, uint value);

    constructor() ERC20("Daobao", "DB") Pausable() {
         _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
        main = msg.sender;
        _pause(); // pauses transfers?
    }

    function mintRequest(address minter) external {
        require(msg.sender == main);
        _mint(minter, 1e18);
        emit Minted(minter, 1e18);
    }

    function burnRequest(address minter) external {
        require(msg.sender == main);
        _burn(minter, 1e18);
        emit Burned(minter, 1e18);
    }
}