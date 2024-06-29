<!-- ABOUT THE PROJECT -->
## About The Project
We are building a decentralized crowdfunding smart contract system using Solidity. The project includes two main components: FundMe.sol and PriceConverter.sol. This system will allow users to send ETH to the contract and enable the contract owner to withdraw the collected funds.

Components
1. FundMe.sol: This is the main contract that handles funding and withdrawals.
2. PriceConverter.sol: This library provides functionality to convert ETH to USD using Chainlink's price feed.

Features
- Receive Funds: Users can send ETH to the contract.
- Minimum Funding Requirement: Each contribution must meet a minimum value in USD.
- Track Funders: The contract keeps track of all funders and their contributions.
- Owner Withdrawal: Only the contract owner can withdraw the funds.
- Fallback Mechanism: Ensures any ETH sent to the contract is properly handled.

# Lesson 4: Remix Fund Me

_[⌨️ (03:31:55) Lesson 4: Remix Fund Me](https://www.youtube.com/watch?v=gyMwXuJrbJQ&t=12715s)_

💻 Code: https://github.com/PatrickAlphaC/fund-me-fcc

## Introduction

## Sending ETH Through a Function & Reverts

- [Fields in a Transaction](https://ethereum.org/en/developers/docs/transactions/)
- [More on v,r,s](https://ethereum.stackexchange.com/questions/15766/what-does-v-r-s-in-eth-gettransactionbyhash-mean)
- [payable](https://solidity-by-example.org/payable)
- [msg.value & Other global keywords](https://docs.soliditylang.org/en/latest/cheatsheet.html?highlight=cheatsheet#global-variables)
- [require](https://codedamn.com/news/solidity/what-is-require-in-solidity)
- [revert](https://medium.com/blockchannel/the-use-of-revert-assert-and-require-in-solidity-and-the-new-revert-opcode-in-the-evm-1a3a7990e06e)

## Chainlink & Oracles

- [What is a blockchain oracle?](https://chain.link/education/blockchain-oracles)
- [What is the oracle problem?](https://blog.chain.link/what-is-the-blockchain-oracle-problem/)
- [Chainlink](https://chain.link/)
- [Chainlink Price Feeds (Data Feeds)](https://docs.chain.link/docs/get-the-latest-price/)
  - [data.chain.link](https://data.chain.link/)
- [Chainlink VRF](https://docs.chain.link/docs/chainlink-vrf/)
- [Chainlink Keepers](https://docs.chain.link/docs/chainlink-keepers/introduction/)
- [Chainlink API Calls](https://docs.chain.link/docs/request-and-receive-data/)
- [Importing Tokens into your Metamask](https://consensys.net/blog/metamask/how-to-add-your-custom-tokens-in-metamask/)
- [Request and Receive Chainlink Model](https://docs.chain.link/docs/architecture-request-model/)

## Review of Sending ETH and working with Chainlink

## Interfaces & Price Feeds

- [Chainlink Price Feeds (Data Feeds)](https://docs.chain.link/docs/get-the-latest-price/)
- [Chainlink GitHub](https://github.com/smartcontractkit/chainlink)
- [Interface](https://solidity-by-example.org/interface)

## Importing from GitHub & NPM

- [Chainlink NPM Package](https://www.npmjs.com/package/@chainlink/contracts)

## Floating Point Math in Solidity

- [tuple](https://docs.soliditylang.org/en/latest/abi-spec.html?highlight=tuple#handling-tuple-types)
- [Floating Point Numbers in Solidity](https://stackoverflow.com/questions/58277234/does-solidity-supports-floating-point-number)
- [Type Casting](https://ethereum.stackexchange.com/questions/6891/type-casting-in-solidity)
- Gas Estimation Failed
  - Someone should make an article explaining this error

## Basic Solidity: Arrays & Structs II

- [msg.sender](https://docs.soliditylang.org/en/latest/cheatsheet.html?highlight=msg.sender)

## Review of Interfaces, Importing from GitHub, & Math in Solidity

## Libraries

- [Library](https://docs.soliditylang.org/en/v0.8.14/contracts.html?highlight=library#libraries)
- [Solidity-by-example Library](https://solidity-by-example.org/library)

## SafeMath, Overflow Checking, and the "unchecked" keyword

- [Openzeppelin Safemath](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol)
- [unchecked vs. checked](https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic)

## Basic Solidity: For Loop

- [For Loop](https://solidity-by-example.org/loop)
- `/* */` is another way to make comments

## Basic Solidity: Resetting an Array

## Sending ETH from a Contract

- [Transfer, Send, Call](https://solidity-by-example.org/sending-ether/)
- [this keyword](https://ethereum.stackexchange.com/questions/1781/what-is-the-this-keyword-in-solidity)

## Basic Solidity: Constructor

- [Constructor](https://solidity-by-example.org/constructor)

## Basic Solidity: Modifiers

- [Double equals](https://www.geeksforgeeks.org/solidity-operators/)
- [Modifier](https://solidity-by-example.org/function-modifier)

## Testnet Demo

- [Disconnecting Metamask](https://help.1inch.io/en/articles/4666771-metamask-how-to-connect-disconnect-and-switch-accounts-with-metamask-on-1inch-network)

## Advanced Solidity

### Immutable & Constant

- [Immutable](https://solidity-by-example.org/immutable)
- [Constant](https://solidity-by-example.org/constants)
- [Current ETH Gas Prices](https://etherscan.io/gastracker)
- Don't stress about gas optimizations! (yet)
- Naming Conventions
  - [Someone make this!](https://github.com/smartcontractkit/full-blockchain-solidity-course-js/issues/13)

### Custom Errors

- [Custom Errors Introduction](https://blog.soliditylang.org/2021/04/21/custom-errors/)

### Receive & Fallback Functions

- [Solidity Docs Special Functions](https://docs.soliditylang.org/en/latest/contracts.html?highlight=fallback#special-functions)
- [Fallback](https://solidity-by-example.org/fallback)
- [Receive](https://docs.soliditylang.org/en/latest/contracts.html?highlight=fallback#receive-ether-function)

## Lesson 4 Recap

🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊 Completed Solidity Basics! 🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊🎊
