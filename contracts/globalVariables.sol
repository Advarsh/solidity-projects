// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract globalVariable{
    function globalVars() external view returns(address, uint, uint){
        address sender = msg.sender;
        uint timeStamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timeStamp, blockNum);
    }
}