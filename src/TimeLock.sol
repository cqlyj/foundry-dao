// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {TimelockController} from "@openzeppelin/contracts/governance/extensions/GovernorTimelockControl.sol";

contract TimeLock is TimelockController {
    constructor(
        uint256 minDelay, // how long you have to wait before executing a proposal
        address[] memory proposers, // the list of addresses that can propose a new proposal
        address[] memory executors // the list of addresses that can execute a proposal
    ) TimelockController(minDelay, proposers, executors, msg.sender) {}
}
