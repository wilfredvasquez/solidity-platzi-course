// SPDX-License-Identifier: GPL-3.0

// pragma is to indicate the solidity version of the contract 
pragma solidity >=0.7.0 <0.9.0;


// All contract init with the keyword contract and after the name
contract Class {

    struct Student {
        string name;
        uint dni;

    }

    Student[] public students;

    constructor() {
        students.push(
            Student({
                name: "Jhon Doe",
                dni: 12345
            })
        );
    }
}


// Observation:
// If a variable or function is public we can access it easily
