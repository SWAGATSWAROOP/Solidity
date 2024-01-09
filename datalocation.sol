// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract DadaLocations{
    // default is storage
    string Account = "Swagat";
    string  n = "S";
    string  n1;
    string n2;
    // 
    function displayAccName() public view returns (string memory){
        string memory n;
        string storage n1;
        string storage n2;
        return Account;
    }

    // CallData
    function result(string calldata _a)public pure returns (string calldata){
        return _a;
    }   
}



// 4 state variable-storage +5 local variables - storage - 432738
// 1 state variable - storage + 5 local variable - storage
// 1 state variable storage + 5 local variable memory

//gas for calldata (return) < gas for memory(return)