// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Etherunit{
    //The wei keyword is used for ether units
    uint public OneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;  

    uint public oneEher  = 1 ether;
    bool public isOneEther = 1 ether == 1;

    //value is stored in the wei 
    uint public Swagat = 0.001 ether;
}