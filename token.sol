// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Token{
    string public name = "Swagat";
    string public symbol = "INT";

    uint public totalSupply = 1000;

    address public owner;

    mapping (address => uint) balances;

    constructor(){
        owner = msg.sender;
        balances[owner] = 1000; 
    }

    function transfer(address to,uint amount) external {
        require(balances[msg.sender] >= amount,"Dont have that much token");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function getBalance(address addr) external view returns (uint){
        return balances[addr];
    }
}