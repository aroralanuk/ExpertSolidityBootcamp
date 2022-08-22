// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Standard test libs
import "forge-std/Test.sol";

import { Homework2 } from "../src/Homework2.sol";

contract ContractTest is Test {
    Homework2 internal hw2;

    function setUp() public {
        hw2 = new Homework2();
    }

    function testRemoveAtIndex() public {
        hw2.removeAtIndex(2);
        assertEq(hw2.getArrayLength(), 4);
        assertEq(hw2.array(2), 4);
    }
}
