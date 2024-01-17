// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

library RemoveAtindex{
    // libraries dont use state variable
    // We are using staorage because we want to store state variables 
    function remove(uint[] storage arr,uint index) public {
        require(arr.length > 0,"Cant remove at index");
        arr[index] = arr[arr.length-1];
        arr.pop();
    }
}

contract TestArray{
    uint[] public  arr;
    //we can use this library as inbuilt function array
    using RemoveAtindex for uint[];
    function testArrayRemoval() public returns(uint[] memory){
        for(uint i = 0;i<4;i++){
            arr.push(i);
        }
        arr.remove(1);
        return arr;
    }
}

