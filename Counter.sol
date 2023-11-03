//SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract Counter{
    uint count; //uint by default is 256bits
    // uint8 uint16 till- uint256

    //int8, -- int256 --> default int

    //Address addr = for the address like your public key and private key directly put type of hexdecimal
    //bool default value is false
    //fixed
    //struct
    //string
    //enums
    //byte Array



    function get() public view returns (uint){
        return count;
    }

    function inc() public {
        count++;
    }

    function dec() public{
        count--;
    }
}
