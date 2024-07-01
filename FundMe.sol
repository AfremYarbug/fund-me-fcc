// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./PriceConverter.sol";

contract FundMe {

    using 

    uint256 public minimumUsd = 50 * 1e18;
    // minimumUsd / CurrentEthPriceInUSD
    // 50 / 3000 = 0.1666 Ether in Wei is ... and round it up to 2

    address[] public funders;

    mapping(address => uint256) public addressToAmountFunded;

    // send money to
    function fund() public payable {
        // want to be able to set a minimum fund amount in USD
        // is like a checker and if not true it reverts and undo any action before and send the remaining gas back
        // use getConversationRate to check if we send enough
        require(
            msg.value.getConversationRate() >= minimumUsd,
            "Didn't send enough ETH"
        ); // 1*10^18
        // msg.value = ether
        // minimumUsd = usd

        funders.push(msg.sender);
        // see how much ether a user funded
        addressToAmountFunded[msg.sender] = msg.value;
    }

   

    // owner withdraw funds
    // function withdraw() {}
}
