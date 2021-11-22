// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;


// All contract init with the keyword contract and after the name
contract Modifiers {

    address private owner;

    modifier OnlyOwner() {
        if(msg.sender != owner){
            revert();
        }
        _; // This is to indicate the finish of modifier and will be continue with the function
    }

    constructor(){
        owner = msg.sender;
    }

    function Add(uint num1, uint num2) private view OnlyOwner returns(uint) {
        return num1 + num2;
    }
}

// Observations
// The modifiers are like decorator in Python
