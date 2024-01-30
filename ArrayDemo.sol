// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Array{
    uint[]  arr = [7,8,9];
    uint[4] arr2;
    function getValues() public view returns (uint[] memory){
        return arr;
    }

    function getvalue() public view returns(uint[4] memory){
        return arr2;
    }

    function setvalue(uint y)public {
        arr.push(y);
    }

    function removevalue() public{
        arr.pop();
    }

    function removeAtIndex(uint index) public{
        delete arr[index];
    }
}