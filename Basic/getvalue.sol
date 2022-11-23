// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract value {
    
    uint256 public a;


    function getValue(uint256 _a) public{
        a = _a;
    }

    function removeValue() public{
        delete a;
    }
}