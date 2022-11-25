// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;
//memory is used with array, struct, mapping, strings. Basically all reference type datatypes.

contract MyCat{
    string public name;
    string public age;
    string public owner;

    constructor(){
        name = "Kitty";
        age = "2";
        owner = "John Doe";
    }

    function set(string memory _name, string memory _age, string memory _owner) external {
        name = _name;
        age = _age;
        owner = _owner;
    }
    
    function greet() external view returns(string memory){
        return string(abi.encodePacked("Hello World! my name is ",name,". I'm ",age," years old and my owner's name is ",owner,"."));
    }

}