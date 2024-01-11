// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Called{
    event callEvent(address sender,address origin,address from);
    function callThis() public {
        emit callEvent(msg.sender,tx.origin,address(this));
    }
}

contract Caller{
    // Here we will give the address of contrac Called
    function makeCalls(address _contractAddress)public {
        // Calling a smart Contract
        // As we are passing data from one smart Contract to another
        // we need to encode data securely threfore using abi.encodeWithSignature 
        // Calling call this smartcontract 
        address(_contractAddress).call(abi.encodeWithSignature("callThis()"));
    }
}

// message - the smartContract will sign the message and send it