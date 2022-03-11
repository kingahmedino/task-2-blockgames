// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract HelloWorld {
    string private _message;
    event HelloWorldEvent(string helloWorld);

    constructor() {
        emit HelloWorldEvent("Hello world");
    }

    function getMessage() public view returns (string memory) {
        return _message;
    }

    function setMessage(string memory message) public {
        _message = message;
    }

    function getMessageSender() public view returns (address) {
        return msg.sender;
    }
}