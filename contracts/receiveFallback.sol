// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;
// receive() is a function that gets priority over fallback() when a calldata is empty. 
// But fallback gets precedence over receive when calldata does not fit a valid function signature.

contract receiveFallback{
    uint public lastValue;
    string public functionCalled;
    // if there is no calldata receive func will be called
    receive() external payable{
        lastValue = msg.value;
        functionCalled = "received";
    }
    // if there is calldata then fallback func will be called
    fallback() external {
        functionCalled = "fallback";
    }
}