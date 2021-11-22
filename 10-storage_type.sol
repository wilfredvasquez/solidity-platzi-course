// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;


// All contract init with the keyword contract and after the name
contract Storage {

    string private name;

    constructor(string memory word) {
        name = word;
    }
}

// Observation
// storage is more permanent. It is used to save state variable
// memory is more volatile.