// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public favoriteNumber;

    // Dictionary where every single name maps to a specific number
    mapping(string => uint256) public nameToFavoriteNumber;

    People[] public people;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // Change the value of favoriteNumber
    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    // View and pure functions don't spend gas
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // Structs, mappings, and arrays are memory when added to parameters
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
