// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

// key and value pairs
// set, delete, update
contract Mapping{
    mapping(address => uint) public balances;
    uint public bal;
    function example() external{
        bal = balances[msg.sender] = 123;
        bal+=456;
        delete balances[msg.sender] //0
        uint bal2 = balances[(address(1)] //0 since default value of uint is 0
 
    }
}