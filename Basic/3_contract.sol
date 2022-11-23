// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract main {
    uint256 private age=20;
    uint a = 44;
    function call_public() public view returns(uint) {
        return a;
    }
    function call_private() private pure returns(uint256) {
        
        return 55;
    }
    function call_internal() internal pure returns(uint){
        return 66;
    }
    function call_external() external pure returns(uint) {
        return 77;
    }
    uint ajkk = 6;
    function call_pri() public view returns(uint,uint) {
        // call_external();
       return (ajkk,call_private());

    }
}