// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;
// send eth
// see balance
// withdraw eth to different address
contract myContract{

    uint public bal;

    function deposit() payable external{
        bal += msg.value;
    }

    function seeBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawEth() public{
        address payable to = payable(msg.sender);
        to.transfer(seeBalance());
    }

    function withdrawEthToAddress(address payable _to) public{
        _to.transfer(seeBalance());
    }
}
