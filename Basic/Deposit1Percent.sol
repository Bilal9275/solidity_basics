// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract Deposit{
    // using SafeMath for uint256;
    struct userStruct{
        uint256 amount;
        uint256 time;
        uint256 calReward;
        uint256 remainingReward;
    }
    mapping(address => userStruct) public addrMap;
    uint256 reward;
    uint256 totalSeconds;
    

    function depositEther() public payable{
        addrMap[msg.sender].amount = msg.value;
        addrMap[msg.sender].time = block.timestamp;
        addrMap[msg.sender].remainingReward = (addrMap[msg.sender].amount)/100*360;
    }
    function rewardCalc() public returns(uint256){
        if(block.timestamp >= addrMap[msg.sender].time+1 seconds){
            totalSeconds = block.timestamp - addrMap[msg.sender].time;
            reward = addrMap[msg.sender].amount/100*totalSeconds;

            addrMap[msg.sender].time = block.timestamp; // Error
            if(reward >= addrMap[msg.sender].remainingReward){   
                reward = addrMap[msg.sender].remainingReward;
                addrMap[msg.sender].remainingReward = 0;
            }
            }
        addrMap[msg.sender].calReward = reward;
        return addrMap[msg.sender].calReward;
        }
    function withdrawReward() public returns(uint256){
        uint256 _reward = rewardCalc();
        payable(msg.sender).transfer(addrMap[msg.sender].calReward);
        addrMap[msg.sender].calReward = 0;
        // addrMap[msg.sender].remainingReward -= _reward;
        // addrMap[msg.sender].time = block.timestamp;

        return _reward;
    }
    function userCal() public  returns(uint256){
        // if(addrMap[msg.sender].calReward <= addrMap[msg.sender].remainingReward){

        //     return addrMap[msg.sender].calReward;
        // }
        uint _userReward = rewardCalc();
        if(addrMap[msg.sender].calReward <= addrMap[msg.sender].remainingReward){
            return addrMap[msg.sender].remainingReward;
        }
        return _userReward;
        
    }
}
