// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe {

		uint256 public minimumUsd = 50;
		
		// make a function payable
		function fund() public payable {
		
				// Want to be able to set a minimum fund amount in USD
				// 1. How do we send ETH to this contract
				
				// send at least 1 ether with require
				// if not it will revert to an error message
				require(msg.value > 1e18, "Didn't send enough"); // 1e18 = 1 * 10 ** 18
		
		}
		
		function getPrice() public {
		 // use chainlink data feeds to get price information
		 
		 // ABI
		 // Address: 0x694AA1769357215DE4FAC081bf1f309aDC325306
		 
		 // With the address and Abi we can do api calls
		}
		
		function getConversationRate() public {}
		
		function withdraw() {
		
		}
}