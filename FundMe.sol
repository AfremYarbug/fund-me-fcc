// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./PriceConverter.sol";

error NotOwner();

contract FundMe {
    using PriceConverter for uint256;
    // constant, immutable

    // outside of a function and never changes
    // Constants are variables that cannot be modified.
    uint256 public constant MINIMUM_USD = 50 * 1e18; // 1*10**18

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    // can be set inside the constructor but cannot be modified afterwards
    address public immutable i_owner;

    // whoever is deploying the contract
    constructor() {
        I_owner = msg.sender;
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

    function withdraw() public onlyOwner {
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

    // modifier is a keyword that we can add in the function declaration
    // to use same function every time
    modifier onlyOwner() {
        // Withdraw function is only called by the owner and know only the owner can withdraw
        //require(msg.sender = i_owner, "Sender is not owner!");
        /**if the underscore would be below you would tell your 
        function go ahead and run and then run the what is in the modifier*/

        // Instead of a require we do a if statement
        // saves gase because we don't need to save a long error string message
        if (msg.sender != i_owner) {
            revert NotOwner();
        }
        _;
    }

    // What happens if someone sends this contract ETH without calling the fund function
    // add receive and fallback functions just in case somebody accidentally send money without calling fund function

    receive() external payable {
        fund();
    }

    fallback() external payable {
        fund();
    }
}
