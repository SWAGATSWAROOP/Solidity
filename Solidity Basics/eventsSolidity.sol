// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract EventLog{
    //event declaration
    // upto 3 parameters can be indexed
    //Events help us to filter logs on blockchain

    event Log(address indexed sender,string message);
    // Why are not using  memory beacuse we dont need persmission EVM for some memory 
    // Here we are directly logging or putting data on the blockchain
    // we can evaluate condition of 3 parameters to filter out
    event Event2();

    //trigger the evenr
    function testEventWorking() public {
        emit Log(msg.sender,"BlockChain is awesome");
        emit Log(msg.sender,"User created Sucessfully");
        emit Event2();
    }
}