// SPDX-License-Identifier:MIT
pragma solidity ^0.8;

contract DepositToken{

function deposit() public payable returns(bool){
    require(msg.value >= 1 ether, "Invalid value");
    return true;
}
function withdraw() public view returns(uint256){

 return address(this).balance;
    
    
}









}