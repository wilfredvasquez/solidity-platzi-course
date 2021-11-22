// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;


// All contract init with the keyword contract and after the name
contract Gas {

    uint public num;

    function setNumber(uint numIn) public {
        num = numIn;
    }
}

// Observation:
// To read a value the transaction don't need gas.
// To set or change any value the transaction need gas.