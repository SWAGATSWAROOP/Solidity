// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Primitive_type{ 
    bool public b = true;
    uint8 public u8 = 4;
    int8 public i8 = 4;
    uint16 public u16 = 200;
    uint public u256 = 1000000;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
}



