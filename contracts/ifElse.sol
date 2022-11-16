// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract ifElse{
    uint public y = 2;
    function conditionals(uint _x) external view returns(uint){
        if(_x<10){
            return 1+y;
        }else if(_x<20){
            return 2;
        }else{
            return 3;
        }
    }
    function ternarys(uint _y) external pure returns(uint){
        return (_y<10 ? 1 : 2);
    }
}

