// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Marking abstract contract
abstract contract CalcuTemplate{
    // Only for function declaration
    function op() public virtual returns(uint); //Abstract method

    function getValue() public pure returns (uint){
        return 1;
    }
}

// interface if all functions are virtual and external
// no need for virtual keyword
interface Cal {
    function op() external  returns (uint);
}

contract Add is CalcuTemplate{
    uint public num1;
    uint public num2;

    function op()public view override returns(uint){
        return  num1+num2;
    }
}