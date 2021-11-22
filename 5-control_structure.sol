// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;


// All contract init with the keyword contract and after the name
contract ControlStructure {

    uint[] public nums;
    string public result;

    constructor(bool condition) {
        if(condition){
            result = "True Condition";
        } else {
            result = "False Condition";
        }

        for(uint i = 0; i < 10; i++){
            nums.push(i);
        }
    }
}