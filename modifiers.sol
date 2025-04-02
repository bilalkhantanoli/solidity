// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract PauseAbleToken {
    address public owner;
    bool public isPaused;
    mapping (address => uint) public balanceOf;

    constructor(){
        owner = msg.sender;
        isPaused = false;
        balanceOf[owner] = 1000;
    }

    modifier onlyOwner () {
        require(msg.sender == owner, "Must be the owner");
        _;
    }
    modifier whenNotPaused () {
        require(!isPaused, "The contract is paused");
        _;
    }
    function pause() public onlyOwner {
        isPaused = true;
    }
    function unpause() public onlyOwner {
        isPaused = false;
    }
    function transfer(address to, uint _amount) public whenNotPaused {
        require(balanceOf[msg.sender] >= _amount, "You don't have enough tokens.");

        balanceOf[msg.sender] -= _amount;
        balanceOf[to] += _amount;
    }
}