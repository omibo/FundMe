// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract FundMe {

    function fund() public payable {
        require (msg.value > 1e18, "Did no send enough ETH");
    }

    function withdraw() public {}

}
