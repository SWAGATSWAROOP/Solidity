// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract P1{
    function show()public virtual  pure returns(string memory){
        return "This is from contract P1";
    }
}

contract P2{
    function show()public virtual  pure returns(string memory){
        return "This is from contract P2";
    }
}

contract P3 is P1,P2{
    function show()public override(P1,P2) pure returns(string memory){
        // return "This is from Child"; for new function
        return super.show(); //Will return P2 as language reads from left to right
    }
}