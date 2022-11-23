// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract main{
    int[2] arr1 = [int(11), 12];
    int[2] arr2 = [int(21),22];

    function doSomeWork() public returns(int){
        arr1 = arr2;
        return arr1[0];
    }
}