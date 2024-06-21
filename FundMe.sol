// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;
    uint256 public minimumUsd = 50 * 1e18; // 1*10**18

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    address public owner;

    // whoever is deploying the contract
    constructor() {
        owner = msg.sender;
    }

    // make a function payable
    function fund() public payable {
        // Want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract

        // send at least 1 ether with require
        // if not it will revert to an error message
        require(
            msg.value.getConversionRate() >= MINIMUM_USD,
            "You need to spend more ETH!"
        );
        // 1e18 = 1 * 10 ** 18
        // 18 decimals places
        // msg.value is a uint56 and price is int256

        // every time somebody sends us money we add that funders in the list
        // Keep track of all the different funders
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;
    }

    function withdraw() {
        // reset addressToAmountFunded
        // loop through funders
        for (
            uint256 funderIndex = 0;
            funderIndex < funders.length;
            funderIndex++
        ) {
            address funder = funders[funderIndex];
            // reset mapping
            addressToAmountFunded = 0;
        }

        // reset funders array

        funders = new address[](0);

        // // withdraw funds

        // transfer
        // send
        // call

        (bool callSuccess, ) = payable(msg.sender).call{
            value: address(this).balance
        }("");
        require(callSuccess, "Call failed");
    }
}
