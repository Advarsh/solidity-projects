// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract ownable{
    address public owner;
    constructor() {
        owner = msg.sender;
    }

    modifier whenNotOwner() {
        require(msg.sender==owner, "it must be the owner to avoid this error");
        _;
    }

    function setOwner(address newOwner) external whenNotOwner{
        require(newOwner!=address(0),"new owner should not have a address of 0 to avoid this error");
        owner = newOwner;
    }

    function onlyOwnerCanCall() external whenNotOwner{}
    
    function anyoneCanCal() external{}

}