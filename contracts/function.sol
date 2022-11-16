// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract func{
    function multiply (uint x, uint y) external pure returns(uint){
        return x*y;
    }
    function divide (uint x, uint y) external pure returns(uint){
        return x/y;
    }
}