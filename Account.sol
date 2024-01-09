// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Account{
    mapping (address => uint) balance;

    function addBalance(uint amt)public {
        balance[msg.sender] += amt;
    }

    function getBalance()public view returns (uint){
        return balance[msg.sender];
    }

    // Tranfer money
    function transfer(address to,uint amount) public {
       //
       //
       //
       // Lets say we have done some change in values
       // in previous steps now we find insufficient balance then we revert or rollback

    //    Check this or
        // if(balance[msg.sender] < amount){
        //     revert("You dont have sufficient funds");
        // }

        // Use require the balance sjould be greater then proceed along with msg at 
        require(balance[msg.sender] > amount,"insufficient funds");


        balance[msg.sender] -= amount;
        balance[to] += amount;
    }
}

// Lets say I only want owner to transact
contract own{
    mapping (address => uint) balance;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    function addBalance(uint amt)public {
        require(owner == msg.sender,"Not the owner");
        balance[msg.sender] += amt;
    }

    function getBalance()public view returns (uint){
        return balance[msg.sender];
    }

    // Tranfer money
    function transfer(address to,uint amount) public {
       //
       //
       //
       // Lets say we have done some change in values
       // in previous steps now we find insufficient balance then we revert or rollback

    //    Check this or
        // if(balance[msg.sender] < amount){
        //     revert("You dont have sufficient funds");
        // }

        // Use require the balance sjould be greater then proceed along with msg at 
        require(msg.sender != to);
        require(balance[msg.sender] > amount,"insufficient funds");
        uint a = 5;
        uint b = 6;
        uint c = a+b;

        // Let say we perform calculations inside function and check internal
        // assert may takeup your whole gas whrereas require sent some gas back
        // Whenever check internal statement use assert
        // Revert in both assert and require
        assert(c == 11);


        balance[msg.sender] -= amount;
        balance[to] += amount;
    }
}