// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Dhappa is Ownable, ERC20 {
    constructor(
        string memory name,
        string memory symbol,
        uint totalSupply
    ) ERC20(name, symbol){
        _mint(msg.sender, totalSupply);
    }
    
    // Mint additional tokens
    function createToken(address _address, uint amount) public onlyOwner {
        _mint(_address, amount);
    }

    // Burn tokens
    function destroyToken(uint amount) public {
        _burn(msg.sender, amount);
    }

    // Transfer tokens to another address
    function sendToken(address recipient, uint amount) public returns(bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}
