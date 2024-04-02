// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract forloop{
    uint[] data;
    function forLoop() public returns(uint[] memory){
        for(uint i = 0;i<10;i++){
            data.push(i);
        }
        return data;
    }
}