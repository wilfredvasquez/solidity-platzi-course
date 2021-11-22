// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;


// All contract init with the keyword contract and after the name
contract Receive {

    mapping(address => uint) balances;
    uint public balance;

    receive() external payable {
        balances[msg.sender] += msg.value;
    }

    fallback() external payable {
    
    }

    function receiveFunds(uint num) public payable returns(uint){
        balance = msg.value;
        uint amount = num;
        return amount;
    }
}
