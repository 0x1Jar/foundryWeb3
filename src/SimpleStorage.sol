//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleStorage {
    uint256 public favoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public ListOfPeople;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        ListOfPeople.push(Person(_favoriteNumber, _name));
    }

}

