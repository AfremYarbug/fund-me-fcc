// getConversionRate be a function of a uint256
// msg.value.getConversionRate();
// add functions as msg.value is an object/struct/contract


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// Why is this a library and not abstract?
// Why not an interface?
library PriceConverter {
    // library can not send ethers
    // can not have state variables
    // can not send ether
    // all functions going to be internal

    // turns a uint256 a price of ETH in terms of USD
    function getPrice() internal view returns (uint256) {
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

    function getVersion() internal view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            0x694AA1769357215DE4FAC081bf1f309aDC325306
        );
        return priceFeed.version();
    }

    function getConversationRate(
        uint256 ethAmount
    ) internal view returns (uint256) {
        uint256 ethPrice = getPrice();
        // eth Price: 3000_18 zeros = ETH/USD price
        // send 1 eth
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUsd;
    }

}