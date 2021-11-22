// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;


// All contract init with the keyword contract and after the name
contract Balance {

    mapping(address => uint) public balance;

    enum State { Started, Finished }

    State public stateOfContract;

    constructor() {
        stateOfContract = State.Started;

        balance[msg.sender] = 1000;

        stateOfContract = State.Finished;
    }
}

// Observations:
// The mappings is like dictionary in python