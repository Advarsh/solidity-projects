// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract construct{
    address public addr;
    uint public x;
    constructor (uint _x){
        addr = msg.sender;
        x =_x;
    }
}