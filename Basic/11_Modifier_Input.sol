// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract main{
    //uint marks = 55;
    modifier verifymarks(uint a){
        if ( a >= 60){
            _;
            }
}
    
    
    function doSomeWork(uint a) public pure verifymarks(a) returns(uint) {
        //marks = inputmarks;
        return a;

    }
}