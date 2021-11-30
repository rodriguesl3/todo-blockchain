// SPDX-License-Identifier: UNLINCESED
pragma solidity >=0.4.22 <0.9.0;

contract TodoList {
    uint256 public taskCount = 0;

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    mapping(uint256 => Task) public tasks;

    event TaskCreated(uint256 id, string content, bool completed);
    event TaskCompleted(uint256 id, bool completed);

    constructor() {}

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }

    function toggleCompleted(uint256 id) public {
        Task memory _task = tasks[id];
        _task.completed = !_task.completed;
        tasks[id] = _task;
        emit TaskCompleted(id, _task.completed);
    }
}
