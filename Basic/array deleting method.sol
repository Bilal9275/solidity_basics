// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract itemRemoval{

  uint[] public firstArray = [1,2,3,4,5,6,7,8,9];
  
// in this selected index removed and next index shifted on removed index in ordered way.
    function orderedArray(uint index) public{
        for(uint i = index; i < firstArray.length-1; i++){
        firstArray[i] = firstArray[i+1];      
        }
        firstArray.pop();
    }


 // removing index shifted to last index ( as unordered ) and last index moved to that 
 //  shifting indexand then pop from list. length changed with unordered array index values.

    // function remove(uint index) public{
    //     firstArray[index] = firstArray[firstArray.length - 1];
    //     firstArray.pop();
    // }

  // only value deleted but index value not change it will be zero ,therefore length not changed.

//   function removeItem(uint i) public{
//     delete firstArray[i];
//   }

  function getLength() public view returns(uint){
    return firstArray.length;
  }
}