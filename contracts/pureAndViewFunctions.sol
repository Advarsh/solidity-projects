// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7

contract pureAndView{
    uint public num =256;
    function views() external view returns(uint){
        return num+1;
    }
    
    function pures() external pure returns(uint){
        return 1;
    }

    function test1() external ? returns(uint){
        uint x = 234;
        return num-x;
    }

    function test2() external ? returns(uint){
        uint x = 77;
        return ((x*2) - x);
    }

}