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
