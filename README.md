# TodoContract.sol
Contract Address ; 0x268C74Cc28B1b709193EAA7Cdc02313A7cd97a83
Etherscan Transaction; https://sepolia.etherscan.io/tx/0x242504e3def93a7d2a00b19545c6ed78c9974f0cd318848557455b9627a65e28

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract todoContract {
 
struct Todo {
    uint256 id;
    string title;
    string description;
    bool doneSuccessful;
}
mapping (address => Todo) public todos;

function getTodo(string memory _title, string memory _description) public {
    Todo storage newTodo = todos[msg.sender];
    newTodo.title = _title;
    newTodo.description = _description;
}

}
