//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Function{
    //function to return multiple values

    function returnNamed() public pure returns(uint x,bool b,int y){
        return (1,true,-5);
    }

    function AssignValues() public pure returns(uint x,bool b,int y){
        x = 30;
        b = false;
        y = -20;
        return (x,b,y);
    }

    function destructuring() public pure returns (uint,bool,uint,uint,uint){
        (uint i,bool b,uint j) = returnMultiple();
        (uint x,,uint y) = (10,15,20);
        return (i,b,j,x,y);
    }

    function returnMultiple() public pure returns(uint,bool,uint){
        return (1,true,10);
    }
}

contract SecondFunction{
    // External keyword make it possible to call by other smart contract
    function callFunction() external view  returns (address){
        // msg.sender -> address of caller is used
        return msg.sender;
    }
}

contract ThirdContract{
    function secondFunctionContract(uint x,uint y,uint z,address a,bool b,string memory c) public  pure returns (uint){
        return 10;
    }

    function callfunction() external view returns (uint){
        return  secondFunctionContract(1, 2, 3, address(0), true, "Yah");
    }

    function callFunctionWithKeyVAlue() external  pure returns (uint){
        return secondFunctionContract({a:address(0),x:1,y:2,z:3,b:false,c:"Hello Swagat"});
    }
}