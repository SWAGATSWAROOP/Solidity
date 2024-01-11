// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FallbackReceive
{   
    string public called = "";
    uint public amount = 0;
    bytes public data;

    // Contract can receive payment through this type of function
    receive() external payable 
    {
        called = "receive";
        // The amount will come
        amount = msg.value;
    }

    fallback() external payable  {
        called = "fallback";
        amount = msg.value;
        data = msg.data;
    }
}