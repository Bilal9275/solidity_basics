// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// It will not copy it will not create a copy of variable
contract main{
    uint256[] stateVar = [0,1];


    function doSomeWork(uint256 a) public returns(uint256[] memory){
        stateVar.push(a);
        return stateVar;
    }
}