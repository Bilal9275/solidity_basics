// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract main{
    enum Gender{
        male,
        female
    }
    struct Student {
        string name;
        uint age;
        bool isPassed;
        Gender gender;
    }

    function doSomeWork() public pure returns(string memory, uint, string memory, uint) {
        Student memory s1 = Student('Sarmad', 26, true, Gender.male);
        Student memory s2 = Student('Abdullah', 24, false, Gender.male);
        return (s1.name, s1.age, s2.name, s2.age);
    }
}