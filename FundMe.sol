// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundMe {

    // send money to
    function fund() public payable {

        // want to be able to set a minimum fund amount in USD
        require(msg.value > 1e18, "Didn't send enough ETH"); // 1*10^18
    }

    // owner withdraw funds
    function withdraw() {}
}