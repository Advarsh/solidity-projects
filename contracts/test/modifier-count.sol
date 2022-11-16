// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract modCount{
    bool public paused; //false
    int public count;

    function setPause(bool _paused) external{
        paused = _paused;
    }

    // modifier notPaused(){
    //     require(!paused, "paused");
    //     _;
    // }

    // function inc() external notPaused{
    //     count++;
    // }
    // function dec() external notPaused{
    //     count--;
    // }

    // modifier notPausedWithArguments(int _x){
    //     require(_x<100, "greater than or equal to 100");
    //     _;
    // }

    // function incBy(int _x) external notPausedWithArguments(_x){
    //     count+=_x;
    // }
    // function decBy(int _x) external notPausedWithArguments(_x){
    //     count-=_x;
    // }

    // modifier sandwich(){
    //     count+=10;
    //     _;
    //     count*=2;
    // }

    // function inc() external sandwich() {
    //     count++;
    // }
}