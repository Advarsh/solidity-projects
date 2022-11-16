// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract funcOut{
    function returnOut() public pure returns(uint, bool){
        return(1,true);
    }
    function returnOut2() public pure returns(uint x, bool b){
        return(1, true);
    }
    function returnOut3() public pure returns(uint x, bool b){
        x = 2;
        b = false;
    }

    function destructAss() public pure{
        (uint x, bool b) = returnOut();
        (, bool _b) = returnOut();
    }
}
