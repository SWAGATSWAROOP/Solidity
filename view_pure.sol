// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//View Function variables that no state wiil be changed
//Pure Functions declare that no state variable will be changed or read

contract Swagat{
    //internal
    uint data = 0;
    struct Human{
        string name;
        uint Age;
        string gender;
    }

    Human Aryan;

    function add(uint y) public  view returns(uint){
        //we are able to get value of data
        return data+y;
    }

    function AddX(uint x,uint y)public pure returns(uint){
        return y+x;
    }




}