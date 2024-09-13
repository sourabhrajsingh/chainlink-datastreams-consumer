// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {StreamsUpkeep} from "../src/StreamsUpkeep.sol";
import {LogEmitter} from "../src/LogEmitter.sol";
import {console} from "forge-std/console.sol";

contract DeployScript is Script {
    function run() external {
        // Start broadcasting transactions to the blockchain
        vm.startBroadcast();

        // Deploy your contract
        StreamsUpkeep streamUpkeep = new StreamsUpkeep(
            0x2ff010DEbC1297f19579B4246cad07bd24F2488A
        );

        // Optional: Log the deployed address
        console.log("Deployed StreamsUpkeep at:", address(streamUpkeep));

        LogEmitter logEmitter = new LogEmitter();

        console.log("Deployed LogEmitter at:", address(logEmitter));

        // Stop broadcasting transactions
        vm.stopBroadcast();
    }
}
