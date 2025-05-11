// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Price} from "../src/Price.sol";

contract PriceTest is Test {
    Price public price;

    address weth = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    address usdc = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;

    function setUp() public {
        vm.createSelectFork(
            "https://arb-mainnet.g.alchemy.com/v2/ceioX-_IADz6uea6_6A0CUVIWvLpyR7U",
            335093227
        );
        price = new Price();
    }

    function test_getPrice() public {
        uint256 price = price.getPrice();
        console.log("price", price);
    }
}
