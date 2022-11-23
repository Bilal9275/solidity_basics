// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract main{
    uint public value = 0;
    function getValue(uint a) public {
        value = a;
    }
    function setValue() public view returns(uint){
        return value;
    }
}