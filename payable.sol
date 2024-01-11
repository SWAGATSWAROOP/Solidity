// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Payable{
    // We can have payable on this address as well 
    // payable address can send and receive ether 
    address payable public owner;

    // payable constructor can receive ether
    // It is mandatory to make constructor as it sets the property of contract
    constructor() payable {
        owner = payable(msg.sender);
    }

    // This function can receive ether
    // deposit money in smartcontract
    function deposit() public payable {}

    // this cannot accept ether
    function nonPayable() public {}

    function withdraw() public payable {
        // this point to current smartcontract
        // getting the values
        uint amount = address(this).balance;
        // we are checking if the the payment id success or not then only move
        // we have comma for handling multiple value return
        // we are waiting till the owner withdraw fund
        // We should always have comma as multople value is returned
        (bool success,) = owner.call{value:amount}("Amount withdrawn from smart contract");

        require(success,"Failed to receive ether");
    }

    function transfer(address payable _to,uint _amount) public {
        // .call function is used to send the ether values
        // .call and the value represents the value to be sent 
        // and the value whhich is written inside the value is sent
        (bool success,) = _to.call{value:_amount}("ether transferred");
        require(success,"Failed to send ether");
    }

}
