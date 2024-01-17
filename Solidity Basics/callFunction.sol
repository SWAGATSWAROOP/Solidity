// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract CallContract{
    string public Str = "BlockChain";
    function updateString(string memory _newstring)public payable returns (uint,uint){
        uint startGas1 = gasleft();
        //Making sure the owner have 1ether
        require(msg.value == 1 ether);
        Str = _newstring;
        // Making the address payable to transfer ether
        address payable  owner = payable(msg.sender);

        (bool success,) = owner.call{value:msg.value}("");
        require(success,"failure");
        return(startGas1,startGas1-gasleft());
    }
}



