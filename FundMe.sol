// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./PriceConverter.sol";

contract FundMe {

    using PriceConverter for uint256;

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

    function withdraw() public {
       for (uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++) {
           address funder = funders[funderIndex];
           addressToAmountFunded[funder] = 0;
       }
       // reset array (start with 0 index)
       funders = new address[](0);

       // transfer
       // this refers to the whole contract
       // typecast msg.sender from address type to payable
       // way to send tokens/ethereum
       // automatically reverts
       /* payable(msg.sender).transfer(address(this).balance); */

       // send
       // have to add a require statement
       /* bool sendSuccess = payable(msg.sender).send(address(this).balance);
       require(sendSuccess, "Send failed"); */

       // call
       // call("function information")
       // recommended way
       (bool callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
       require(callSuccess, "Send failed");
    }
}
