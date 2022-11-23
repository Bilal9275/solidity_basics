// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract main {
    enum Gender {
        male,
        female
    }
    function doSomeWork() public pure returns(Gender g) {
        
        g = Gender.male;
        return g;
    }
}