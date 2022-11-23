// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract main{
    uint age;
    string str = "Hello";
    event checkValue(uint, string);
    function doSomeWork(uint _age) public{
        age = _age;
        emit checkValue(age, str);
    }

}