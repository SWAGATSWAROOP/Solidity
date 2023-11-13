// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract loops{
    //Array of dyanmic length
    //solidity doent allow print function
    uint[]  data;
    //fixed length array uint[6] data
    uint  j = 0;
    function loop1()public returns(uint[] memory){
        while(j < 5){
            data.push(j);
            j++;
        }    
        return data;
    }

}