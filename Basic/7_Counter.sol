// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract main {
    uint public counter = 0;
    function incrementer() public  returns(uint){
        counter += 1;
        return counter;
    }
    function decrementer() public  returns(uint){
        counter -= 1;
        return counter;
    }
    function reset() public  returns(uint){
        return counter = 0;
    }
}