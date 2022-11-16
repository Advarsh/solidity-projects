// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

// reuse code before or after function
// Basic, inputs, sandwich
contract funMod{
    uint public count;
    bool public paused;

    function setPause(bool _paused) external{
        paused = _paused;
    }
    modifier whenNotPaused(){  //normal modifier
        require(!paused,"required not paused to avoid this error");
        _;
    }
    function inc() external whenNotPaused{
        count++;
    }
    function dec() external whenNotPaused{
        count--;
    }

    modifier maxCap(uint __x){ //modifier with inputs
        require(__x<100,"required __x to be less than 100 to avoid this error");
        _;
    }
    function incBy(uint _x) external whenNotPaused maxCap(_x){
        count+=_x;
    }

    modifier multiple(){ //sandwich
        count+=10;
        _;
        count*=2;
    }
    function foo() external multiple whenNotPaused {
        count++;
    }
}