// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract count{
    uint public c=0;
    function counter() external {
        c=c+1;
    }
}
