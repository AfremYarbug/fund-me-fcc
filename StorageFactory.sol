// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {

    // Create a new type 
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        // How does storagefactory know what simple storage looks like?
        // 1. Copy all code from simple storage
        // 2. and better way import contract

        // With this line we can add a simpleStorage Object to our array
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // In order to interact with any contract you need two things:
            // - Adress
            // - ABI - Application Binary Interface

            // Get Contract Object
            // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
            // simpleStorage.store(_simpleStorageNumber);

            // same

           simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    // Read from simpleStorage Contract from the storagefactory
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        // SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // return simpleStorage.retrieve();
        // same
        
        return simpleStorageArray[_simpleStorageIndex].retrieve();
        
    }
}