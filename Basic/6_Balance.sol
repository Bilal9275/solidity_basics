// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract main{
    
    function receivePayment() external payable {
        
    }
    function checkBalance() public view returns(uint){
        return address(this).balance;
    }
}