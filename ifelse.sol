// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Swagat{
    function condition(uint x)public view returns(uint){
        if(x>10){
            return 0;
        }
        else if(x==10)return 2;
        else{
            return 1;
        }
    }
}