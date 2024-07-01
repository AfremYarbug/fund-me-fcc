// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// import from github/npm package: yarn add @chainlink/contracts
import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    uint256 public minimumUsd = 50 * 1e18;
    // minimumUsd / CurrentEthPriceInUSD
    // 50 / 3000 = 0.1666 Ether in Wei is ... and round it up to 2

    address[] public funders;

    mapping(address=>uint256) public addressToAmountFunded;

    // send money to
    function fund() public payable {
        // want to be able to set a minimum fund amount in USD
        // is like a checker and if not true it reverts and undo any action before and send the remaining gas back
        // use getConversationRate to check if we send enough
        require(
            getConversationRate(msg.value) >= minimumUsd,
            "Didn't send enough ETH"
        ); // 1*10^18
        // msg.value = ether
        // minimumUsd = usd

        funders.push(msg.sender);
        // see how much ether a user funded
        addressToAmountFunded[msg.sender] = msg.value;
    }

    // returns the price from ethereum in terms of usd
    // converts msg.value (eth) in dollar with chainlink
    function getPrice() public view returns (uint256) {
        // chainlink data feeds: https://docs.chain.link/data-feeds/using-data-feeds
        // we are interacting outside the contract therefore abi and adress
        // address: https://docs.chain.link/data-feeds/price-feeds/addresses?network=ethereum&page=1
        // 0x694AA1769357215DE4FAC081bf1f309aDC325306

        // ABI: https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol

        // has different functions but the import one is getLatestPrice
        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            0x694AA1769357215DE4FAC081bf1f309aDC325306
        );
        // latestrounddata returns more than one variable but we want only int price
        (, int256 price, , , ) = priceFeed.latestRoundData();

        // msg.value has 18 decimals
        // price has 9 decimals (check decimals function)
        //msg.value is an uint256 and price a int256
        //-> convert price * 1e10 to an uint256
        //typecasting
        return uint256(price * 1e10); // 1^10 == 10000000000
    }

    // Example:
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
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUsd;
        /**
        3000 dollars per ethereum * 1 eth = 3000
         */
    }

    // owner withdraw funds
    // function withdraw() {}
}
