// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract main{
    mapping (uint => string) names;

    function doSomeWork(uint a, string memory b) public{
        // names[1] = 'Hammad';
        // names[2] = 'Sarmad';
        names[a] = b;
    }
    function viewSomeWork(uint a) public view returns(string memory){
        
        return names[a];
    }
}