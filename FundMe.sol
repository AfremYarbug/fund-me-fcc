// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract FundMe {
		
		// make a function payable
		function fund() public payable {
		
				// Want to be able to set a minimum fund amount in USD
				// 1. How do we send ETH to this contract
				
				// send at least 1 ether with require
				// if not it will revert to an error message
				require(msg.value > 1e18, "Didn't send enough"); // 1e18 = 1 * 10 ** 18
		
		}
		
		function withdraw() {
		
		}
}