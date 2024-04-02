// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

contract enum1{
    enum FreshJuice{small,medium,large}
    FreshJuice choice;
    FreshJuice constant swagat=FreshJuice.medium;
    
    function setLarge() public{
        choice = FreshJuice.large;
    }

    function setSmall() public{
        choice = FreshJuice.small;
    }

    function setMedium() public{
        choice = FreshJuice.medium;
    }

    function getChoice() public view returns(FreshJuice){
        return choice;
    }

    function getDefaultChoice() public view returns(uint){
        return uint(swagat);
    }
}
