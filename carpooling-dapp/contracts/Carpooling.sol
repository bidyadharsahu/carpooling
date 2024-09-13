// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Carpooling {
    struct Ride {
        address driver;
        string startLocation;
        string endLocation;
        uint price;
        bool isAvailable;
    }

    mapping(uint => Ride) public rides;
    uint public rideCount = 0;

    function addRide(string memory _startLocation, string memory _endLocation, uint _price) public {
        rideCount++;
        rides[rideCount] = Ride(msg.sender, _startLocation, _endLocation, _price, true);
    }

    function bookRide(uint _rideId) public payable {
        Ride memory ride = rides[_rideId];
        require(ride.isAvailable, "Ride not available");
        require(msg.value >= ride.price, "Insufficient payment");

        payable(ride.driver).transfer(ride.price);
        rides[_rideId].isAvailable = false;
    }

    function getRide(uint _rideId) public view returns (address, string memory, string memory, uint, bool) {
        Ride memory ride = rides[_rideId];
        return (ride.driver, ride.startLocation, ride.endLocation, ride.price, ride.isAvailable);
    }
}
