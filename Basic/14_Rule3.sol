// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract main{
    mapping (int => string) names;
    function doSomeWork() public view{
        mapping (int => string) storage name = names; 
    }
}