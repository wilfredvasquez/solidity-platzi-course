// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;


// All contract init with the keyword contract and after the name
contract Transfer {

    constructor() payable {
        
    }

    function transferBySend(address destiny, uint amount) public returns(bool){
        // send method return true or false.
        bool result = payable(destiny).send(amount);
        return result;
    }

    function transferByTransfer(address destiny, uint amount) public {
        // transfer method don't return anything, but stop the execution
        payable(destiny).transfer(amount);
    }

    function transferByCall(address destiny, uint amount) public returns(bool) {
        (bool result, bytes memory response) = destiny.call{value:amount, gas: 1000}("");
        return result;
    }
}