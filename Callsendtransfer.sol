// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract SendingFunds{
    function sendEtherTransfer(address payable _to)public payable {
        // this is not recommended
        _to.transfer(msg.value); //2300 gas limit
    }

    function SendEther(address payable  _to)public payable {
        bool sent =_to.send(msg.value);
        require(sent,"Failed to transact ether");
    }

    function sendEtherCall(address payable _to)public payable {
        (bool sent,) = _to.call{gas:10000,value:msg.value}("");
        require(sent,"Failed");
    }
}