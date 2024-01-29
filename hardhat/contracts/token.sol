// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Token{
    string public name = "Swagat";
    string public symbol = "INT";

    uint public totalSuply = 1000;
    address public owner;

    mapping(address => uint) balances;

    constructor()
    {
        owner = msg.sender;
        balances[owner] = totalSuply;
    }

    function transfer(address to,uint amount) external{

    }

    function balanceOf(address account)external view returns(uint){
        return 0;
    }

}

