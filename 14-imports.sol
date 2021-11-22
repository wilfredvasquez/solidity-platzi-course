// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;

import "./utils/SafeMath.sol";

// All contract init with the keyword contract and after the name
contract Import {

    function addNumbers(uint num1, uint num2) public pure returns(uint) {
        return SafeMath.add(num1, num2);
    }

}