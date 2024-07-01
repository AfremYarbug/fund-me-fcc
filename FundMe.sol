// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundMe {

    uint256 public minimumUsd = 50;

    // send money to
    function fund() public payable {

        // want to be able to set a minimum fund amount in USD
        // is like a checker and if not true it reverts and undo any action before and send the remaining gas back
        require(msg.value >= minimumUsd, "Didn't send enough ETH"); // 1*10^18
        // msg.value = ether
        // minimumUsd = usd
        
        // get evm price
    }

    // get price in terms of usd 
    function getPrice() public {
        // chainlink data feeds: https://docs.chain.link/data-feeds/using-data-feeds
        // we are interacting outside the contract therefore abi and adress
        // address: https://docs.chain.link/data-feeds/price-feeds/addresses?network=ethereum&page=1
        // 0x694AA1769357215DE4FAC081bf1f309aDC325306

        // ABI: https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol
    }

    // Example:
    function getVersion() public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return priceFeed.version(); 
    }

    function getConversationRate() public {

    }

    // owner withdraw funds
    function withdraw() {}
}