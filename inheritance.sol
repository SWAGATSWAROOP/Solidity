// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Computer
{
    function compute() public pure returns(string memory){
        return "Computing";
    }
    function show() public virtual pure returns(string memory){
        return "8gb, M1, 512gb";
    }
}

//Inheritance
contract Laptop is Computer{
    function show() public override  pure returns(string memory){
        return "M1 Air";
    }
}