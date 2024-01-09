// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract A{
    uint public num;

    //Value req at time of deployment
    constructor(uint _num)
    {
        num = _num;
    }

    //modifier
    modifier check(uint _num){
        if(_num >= 5){
            _;
        }
    }

    // Updating values by passing through modifier
    function update(uint _num)public check(_num) {
        num += _num;
    }
}

//The inherited contract B should first pass value to super class
contract B is A{
    constructor(uint _num)A(_num)
    {

    }
}