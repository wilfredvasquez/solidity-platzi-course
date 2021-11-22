// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;

import "./utils/Interface.sol";
import "./8-modifiers.sol";

// All contract init with the keyword contract and after the name
contract Inheritance is Add, Modifiers {

    function add(uint num1, uint num2) public override OnlyOwner view returns (uint) {
        return num1 + num2;
    }

}