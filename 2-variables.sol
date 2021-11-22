// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;

contract Structure {

    int amount;
    uint amountWithoutSign;
    address ownAddress;
    bool signed;
    
    constructor(bool isSigned) {
        ownAddress = msg.sender;
        signed = isSigned;
    }
}

// Observations:
// Types:
// int: To int numbers with sign
// uint: To int numbers without sign
// bool: To boolean -> True or False
// address: To Ethereum address
// string: To string
// bytes: To string of bytes

// Local variables: They are variables with a limited scope
// State variables: They are variable of the contract
// Global variables: 
// 1.- msg: It has information about who calling contract
// 2.- tx: Values about the transaction
// 3.- block: Values about current block