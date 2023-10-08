# Dhappa Token (DHAP)

Dhappa (DHAP) is a simple Ethereum-based ERC-20 token contract created using Solidity. This contract allows you to deploy and manage your own ERC-20 token with the following features:

- Minting additional tokens
- Burning (destroying) tokens
- Transferring tokens to other addresses

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [Creating the Dhappa Token](#creating-the-dhappa-token)
  - [Minting Additional Tokens](#minting-additional-tokens)
  - [Burning Tokens](#burning-tokens)
  - [Transferring Tokens](#transferring-tokens)
- [License](#license)

## Getting Started

### Prerequisites

To use this code, you need the following:

- An Ethereum development environment (e.g., Remix, Truffle, Hardhat).
- Basic knowledge of Ethereum and smart contract development.

### Installation

1. Copy the Dhappa.sol code into your development environment.
2. Make sure you have the required dependencies installed, particularly the OpenZeppelin contracts, which are imported in the code.
3. Compile and deploy the smart contract to the Ethereum blockchain.

## Usage

### Creating the Dhappa Token

The Dhappa token contract inherits from the OpenZeppelin ERC20 contract and the Ownable contract, which means it is both an ERC-20 token and allows for ownership control.

To create the Dhappa token, you need to deploy the contract and specify the following parameters:

- `name`: The name of the token.
- `symbol`: The symbol of the token.
- `totalSupply`: The total supply of tokens to be initially minted and assigned to the contract deployer (owner).

### Minting Additional Tokens

The `createToken` function allows the owner to mint additional tokens and assign them to a specific address. To mint new tokens, use the following function:

```solidity
function createToken(address _address, uint amount) public onlyOwner
```
- `address`: The address to which the newly minted tokens will be assigned.
- `amount`: The number of tokens to be minted.
  
## Burning Tokens

The destroyToken function allows any token holder to burn (destroy) their own tokens. This can be useful for reducing the token supply. To burn tokens, use the following function:

```solidity
function destroyToken(uint amount) public
```
- `amount`: The number of tokens to be burned by the caller.

## Transferring Tokens
The sendToken function allows token holders to transfer tokens to another address. To transfer tokens, use the following function:

```solidity
function sendToken(address recipient, uint amount) public returns (bool)
```
- `recipient`: The address to which tokens will be transferred.
- `amount`: The number of tokens to transfer.

## License
This Dhappa token contract is released under the MIT License. You can find the license details in the SPDX-License-Identifier comment at the top of the Solidity code.
