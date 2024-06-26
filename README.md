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

## (04:11:09): Floating Point Math in Solidity

- [tuple](https://docs.soliditylang.org/en/latest/abi-spec.html?highlight=tuple#handling-tuple-types)
- [Floating Point Numbers in Solidity](https://stackoverflow.com/questions/58277234/does-solidity-supports-floating-point-number)
- [Type Casting](https://ethereum.stackexchange.com/questions/6891/type-casting-in-solidity)
- Gas Estimation Failed
  - Someone should make an article explaining this error

## (04:21:59): Basic Solidity - Arrays & Structs II

- keep track of all the people who sends us money
- datastructure to keep track
- array of addresses named funders
- see how much ether a user funded

- [msg.sender](https://docs.soliditylang.org/en/latest/cheatsheet.html?highlight=msg.sender)

## Review of Interfaces, Importing from GitHub, & Math in Solidity

## (04:25:03): Libraries

- moving price and conversation math into a library contract
- getConversationRate be a function of a uint256
- PriceConverter is a library that going to be attach to a uint256
- put getPrice, getVersion, getConversationRate into the library contract "PriceConverter.sol"
- import PriceConverter.sol in FundMe.sol

- [Library](https://docs.soliditylang.org/en/v0.8.14/contracts.html?highlight=library#libraries)
- [Solidity-by-example Library](https://solidity-by-example.org/library)

## (04:29:54): SafeMath, Overflow Checking, and the "unchecked" keyword

- [Openzeppelin Safemath](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol)
- [unchecked vs. checked](https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic)

## (04:34:29): Basic Solidity - For Loop

- create a for loop to reset funders array and addressToAmountFunded because they should get down to zero
- if the owner want to withdraw the funds

- [For Loop](https://solidity-by-example.org/loop)
- `/* */` is another way to make comments

## (04:42:01): Basic Solidity - Resetting an Array

## (04:42:36): Sending ETH from a Contract

- withdraw funds from the contract

- [Transfer, Send, Call](https://solidity-by-example.org/sending-ether/)
- [this keyword](https://ethereum.stackexchange.com/questions/1781/what-is-the-this-keyword-in-solidity)

## (04:50:26): Basic Solidity Constructor

- issue: anybody can withdraw from this contract
- withdraw function is only called by the owner

- [Constructor](https://solidity-by-example.org/constructor)

## (04:53:20): Basic Solidity Modifiers

- modify withdraw function so that only the owner can withdraw

- [Double equals](https://www.geeksforgeeks.org/solidity-operators/)
- [Modifier](https://solidity-by-example.org/function-modifier)

## (04:56:34): Testnet Demo

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