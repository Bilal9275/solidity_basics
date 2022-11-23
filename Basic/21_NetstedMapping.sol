// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract main{
    mapping (string => mapping(uint => string)) nestedMapping;

    function doSomeWork() public returns(string memory){
        nestedMapping['Sarmad'][1] = 'Blockchain';
        nestedMapping['Hammad'][2] = 'One Stack Dev';
        return nestedMapping['Sarmad'][1];
    }
}