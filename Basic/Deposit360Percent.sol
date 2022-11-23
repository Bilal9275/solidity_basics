// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Deposit{
    struct userStruct{
        uint256 amount;
        uint256 time;
        uint256 calReward;
        uint256 remainingReward;
    }
    mapping(address => userStruct) public addrMap;
    // User deposit ether
    function depositEther() public payable{
        addrMap[msg.sender].amount = msg.value; // Amount Save
        addrMap[msg.sender].time = block.timestamp; // Time Save
        addrMap[msg.sender].remainingReward = (addrMap[msg.sender].amount)/100*360; // Total Reward
    }

    function rewardCalc() public returns(uint256){
        // Calculate total seconds for which we have to calculate reward
        uint256 totalSeconds = block.timestamp - addrMap[msg.sender].time;
        // Calculate Reward for passed seconds
        uint256 reward = addrMap[msg.sender].amount/100*totalSeconds;
        // Remove time as we calculated rewaard for that time
        addrMap[msg.sender].time = block.timestamp;
        if(reward >= addrMap[msg.sender].remainingReward){
            reward = addrMap[msg.sender].remainingReward;
            addrMap[msg.sender].remainingReward = 0;
            addrMap[msg.sender].calReward += reward;
        }
        if (reward < addrMap[msg.sender].remainingReward){
            addrMap[msg.sender].calReward += reward;
            addrMap[msg.sender].remainingReward -= reward;
        }
        return addrMap[msg.sender].calReward;
    }


    function calculateReward() public returns(uint256){
       uint256 _reward = rewardCalc();
       return _reward;
    }

    function withdrawReward() public returns(uint256){
        rewardCalc();
        payable(msg.sender).transfer(addrMap[msg.sender].calReward);
        addrMap[msg.sender].calReward = 0;
       

        return addrMap[msg.sender].calReward;
    }
    function UserFucntion() public view returns(uint256){
        return addrMap[msg.sender].calReward;
    }
}