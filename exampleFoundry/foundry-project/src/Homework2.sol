// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/// @title smart contract for solving hw2 problem for expert solidity bootcamp
/// @author aroralanuk
contract  Homework2 {
    uint[] public array = [0,1,2,3,4];

    /**
     * @dev Store value in variable
     */
    function getArrayLength() public view returns (uint) {
        return array.length;
    }

    /**
     * @dev Return value
     * @return value of 'number'
     */
    function removeAtIndex( uint index) public returns (uint[] memory) {
        require(index >= 0 && index < array.length);
        array[index] = array[array.length - 1];
        delete array[array.length - 1];
        array.pop();
        return array;
    }
}
