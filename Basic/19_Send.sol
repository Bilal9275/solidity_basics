// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract main{
    address payable public myVault;

    constructor(address payable a) {
          myVault = a;
    }
    function doSomeWork() public payable returns(bool){
        bool verifyTrasaction = myVault.send(2 ether);
        return verifyTrasaction;

    }
}