// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;
contract data{
    bool public b = true;
    uint public u = 123; //uint256 = 0 to 2**256 - 1
                         //uint8 = 0 to 2**8-1
    int public i = -123; //int256 = -2**255 to 2**255-1
    int public max = type(int).max;
    int public min = type(int).min;
    address public addr;
    bytes32 public b32;
}