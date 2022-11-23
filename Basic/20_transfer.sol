// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract main{
    address payable public myVault;

    constructor(address payable a) {
          myVault = a;
    }
    function doSomeWork() public payable{
        myVault.transfer(msg.value);

    }
}