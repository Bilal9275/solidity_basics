// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract main{
    uint256[2] array1 = [1,2];

    function doSomeWork() public returns(uint256){
        array1[1] = 22;
        // return array1[1];
        return array1.length;
    }
}