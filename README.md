<h3 align="center">Fund-Me-FCC</h3>

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