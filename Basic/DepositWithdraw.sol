// SPDX-License-Identifier:MIT
pragma solidity ^0.8;

library SafeMath {
    
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;
        return c;
    }
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
       if (a == 0) {
            return 0;
        }
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, "SafeMath: division by zero");
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "SafeMath: modulo by zero");
        return a % b;
    }
}

interface IERC20{
     function balanceOf(address account) external view returns(uint256);
     function transfer(address receiver, uint256 tokenAmount) external  returns(bool);
    function transferFrom(address tokenOwner, address recipient, uint256 tokenAmount) external returns(bool);
}

contract DepositeWithdraw {
using SafeMath for uint256;
IERC20 public token1;


constructor(IERC20 _token){
    token1 = _token;
}
 function DepositToken(uint256 _amount) public{
    token1.transferFrom( msg.sender, address(this), _amount);
 }  
 function Withdraw() public  returns(uint256)  {
     uint256 a = token1.balanceOf(address(this));
     uint256 b = a.mul(92).div(100);
     token1.transfer(msg.sender, b);
     return b;
 }

function sendToken() public   {
   uint256 a = token1.balanceOf(address(this));
      uint256 b = a.mul(3).div(100);
     token1.transfer(msg.sender,b );
  
}
 
}





























/* interface IERC20{
    // function balanceOf(address account) external view returns(uint256);
    function transfer(address receiver, uint256 tokenAmount) external  returns(bool);
    function transferFrom(address tokenOwner, address recipient, uint256 tokenAmount) external returns(bool);
}

contract myToken {
//using SafeMath for uint256;
IERC20 public token1;
constructor(IERC20 _token){
    token1 = _token;
}
 function DepositToken(uint256 _amount) public  returns(uint256){
    token1.transferFrom( msg.sender, address(this), _amount);
    return _amount;
 }
 function Withdraw() public {
     uint256 a = address(this).balance - 60000000000000000000; 
    token1.transfer(msg.sender, a);
 }
 
}*/













