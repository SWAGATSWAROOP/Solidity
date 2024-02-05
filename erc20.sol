// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LinkToken is ERC20 {

    // constructor will initialize a smart contract
    constructor(uint256 initialSupply) ERC20("LinkCoin", "LC") {

        // _mint is used to create new tokens
        _mint(msg.sender, initialSupply);
    }
}

// 1. check the 