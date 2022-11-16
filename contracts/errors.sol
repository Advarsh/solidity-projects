// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;
//require, revert, assert
//gas refund, state updates are reverted.
//custom error = save gas
contract errors{
    uint public a = 12;
    function req() external view returns(uint){
        require(a<10, "a >=10"); //a needs to be less than 10 to avoid this error
        return 1;
    }
    function rev() external view{
        if(a>10){
            revert("a>=10"); //a needs to be greater than 10 for this error
        }
    }
    function ass() external view{
        assert(a==12); //a needs to be 12 to avoid this error
    }
    error myError(address caller, uint i);
    function custom()external view{
        revert myError(msg.sender, a);
    }
}