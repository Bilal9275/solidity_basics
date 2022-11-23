pragma solidity ^0.8.0;

contract main{
    uint marks = 80;
    modifier verifymarks(){
        if (marks >= 60){
        _;    
            }
}
    
    
    function doSomeWork() public view verifymarks returns(uint) {
        
        return 20;

    }
}