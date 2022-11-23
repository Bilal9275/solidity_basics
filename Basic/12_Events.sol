// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract main{
    uint value;
    event readValue(uint);

    function upfateAge(uint _value)public{
        value = _value;
        emit readValue(value); 
    }
}