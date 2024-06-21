// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallbackExample {
    uint256 public result;

    // get triggert anytime we send a transaction and is empty
    receive() external payable {
        result = 1;
    }

    // call when data is not empty
    fallback() external payable {
        result = 2;
    }
}
