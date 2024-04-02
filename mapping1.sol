// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract learnmapping{
    //mapping address to uint
    //mapping is user degined ds
    mapping(address => uint) public myMap;

    function get(address _addr)public view returns(uint){
        return myMap[_addr];
    }

    function set(address _addr,uint _i)public {
        //square bracket for mapping the address
        myMap[_addr] = _i;
    }

}