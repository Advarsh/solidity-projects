// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract Array{
    uint[] public arr = [1,2,3];
    
    function arrayExamples() external{
        arr.push(4); //1,2,3,4
        arr.length; //4
        delete arr[1]; //1,0,3,4
        arr[1] = 22; //1,22,3,4
        
        // create array in memory 
        uint[] memory a = new uint[](5);
        a[0] = 0;  //only update can be done to a aray in memory
        // a.push(4);
    }
}