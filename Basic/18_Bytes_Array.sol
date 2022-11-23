// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract main{
    bytes var1 = new bytes(10);

    function doSomeWork() public returns(bytes memory){
         var1 = "a";
         return var1;
    }
}