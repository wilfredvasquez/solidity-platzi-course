
// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;


// All contract init with the keyword contract and after the name
contract Functions {

    uint private result;

    constructor() {
        
    }

    function Add(uint num1, uint num2) public pure returns (uint) {
        return InternalAdd(num1, num2);
    }

    function InternalAdd(uint num1, uint num2) private pure returns(uint) {
        return num1 + num2;
    } 

    function GetResult() public view returns(uint) {
        return result;
    }
}


// Observations
// Type of functions:
// 1.- public: All can access it
// 2.- private: Only is access into contract
// 3.- internal: Only is access from contract and its derivate
// 4.- external: Only is accessed from outside of contract

// view: Only read
// pure: No used state variable of contract.