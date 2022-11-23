// SPDX-License-Identifier: MIT


pragma solidity ^0.8.7;


contract Variables {


    int internal age_internal = 40;
    int private age_private = 50;
    int public age_public = 60;
    int internal constant age_int_const = 70;
    function get_private() public view returns (int) {
        return age_private;
    }
}