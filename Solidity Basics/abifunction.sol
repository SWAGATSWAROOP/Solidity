// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract EncodeDecode{
    function encode(string memory _str1,uint _int,string memory _str2)public pure returns (bytes memory){
        return abi.encode(_str1,_int,_str2);
    }

    function decode1(bytes memory data)public pure returns (string memory _str1,uint _int,string memory _str2){
        (_str1,_int,_str2) = abi.decode(data,(string,uint,string));
    }
}