// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";


contract FundMe {

    uint256 public minimumUSD = 5;

    function fund() public payable {
        require (msg.value > 1e18, "Did no send enough ETH");
    }

    function get_price() public view returns(uint256) {
        AggregatorV3Interface price_feed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);

        (, int256 price, , , ) = price_feed.latestRoundData();
        return uint256(price * 1e10);

    }

    function get_conversion_rate() public {}

    function withdraw() public {}

}
