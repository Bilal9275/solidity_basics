// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract dataTypes{
    uint8 age = 40;
    string name = 'Sarmad';
    uint8 index = 140;
    int8 price = 110;
    bool isFeePaid = false;
    
    function doSomeWork() public view returns (uint8,string memory ) {
    
        return (age,name);
    }
}