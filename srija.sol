// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // State variable to store a number
    uint256 private storedNumber;

    // Event to log when the number changes
    event NumberUpdated(uint256 oldNumber, uint256 newNumber);

    // Function to store a new number
    function setNumber(uint256 _newNumber) public {
        uint256 oldNumber = storedNumber;
        storedNumber = _newNumber;
        emit NumberUpdated(oldNumber, _newNumber);
    }

    // Function to retrieve the stored number
    function getNumber() public view returns (uint256) {
        return storedNumber;
    }
}
