// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract hotelRoom{
    enum Status{
        vacant,
        occupied
    }
    Status public currentStatus;

    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
        currentStatus = Status.vacant;
    }

    modifier vacancy(){
        require(currentStatus == Status.vacant, "currently occupied");
        _;
    }

    modifier costs(uint _amount){
        require(msg.value >= _amount, "value is 2 ether");
        _;
    }

    function book() public payable vacancy costs(2 ether){
        owner.transfer(msg.value);
        currentStatus = Status.occupied;
    }
}