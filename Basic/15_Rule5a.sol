// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract main{
    uint public var1 = 10;
    uint public var2 = 20;
    event name(uint var10, uint var20);
    function doSomeWork() public{
        var1 = var2;
        var2 = 40;
        // return var2;
        emit name(var2, var1);
    }
}