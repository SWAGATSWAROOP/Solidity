//SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract Counter{
    uint count; // state variable

    //Doesn't need transaction
    function add() public pure returns (uint){
        return 2+3;
    }

    function get() public view returns (uint){
        return count;
    }

    //Transaction Function
    function inc() public {
        count++;
    }

    function dec() public{
        count--;
    }
}
