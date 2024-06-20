// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    uint256 public minimumUsd = 50 * 1e18; // 1*10**18

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    // make a function payable
    function fund() public payable {
        // Want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract

        // send at least 1 ether with require
        // if not it will revert to an error message
        require(
            getConversionRate(msg.value) >= minimumUsd,
            "Didn't send enough"
        ); // 1e18 = 1 * 10 ** 18
        // 18 decimals places
        // msg.value is a uint56 and price is int256

        // every time somebody sends us money we add that funders in the list
        // Keep track of all the different funders
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;
    }
    // turns a uint256 a price of ETH in terms of USD
    function getPrice() public view returns (uint256) {
        // use chainlink data feeds to get price information

        // ABI
        // Address: 0x694AA1769357215DE4FAC081bf1f309aDC325306

        // With the address and Abi we can do api calls

        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            0x694AA1769357215DE4FAC081bf1f309aDC325306
        );
        (, int256 price, , , ) = priceFeed.latestRoundData();
        // 8 decimals places
        // match 8 decimals and 18
        // typecasting
        return uint256(price * 1e10); // 1e10 == 10000000000
    }

    function getVersion() public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            0x694AA1769357215DE4FAC081bf1f309aDC325306
        );
        return priceFeed.version();
    }

    function getConversationRate(
        uint256 ethAmount
    ) public view returns (uint256) {
        uint256 ethPrice = getPrice();
        // eth Price: 3000_18 zeros = ETH/USD price
        // send 1 eth
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUsd;
    }

    function withdraw() {}
}
