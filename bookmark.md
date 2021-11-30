## Reminders

* when you need to deploy a new version, use this command

```sh 
truffle migrate --reset
```

* when you want to manipulate the smart contract, you can use truffle through this command
```sh
truffle console

todoList = await TodoList.deployed();

todoList.createTask('new Task'));
```

* any time that you will interact with smart contract, use extra parameter in web3.sjs, to identify the selected account.

```js
await App.todoList.toggleCompleted(taskId, { from: App.account });
```