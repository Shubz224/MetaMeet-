// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract POAP is ERC721URIStorage, Ownable {
    uint256 private _eventIdCounter;

    struct Event {
        string name;
        string description;
        string location;
        uint256 date;
        address organizer;
    }

    mapping(uint256 => Event) public events;
    mapping(uint256 => mapping(address => bool)) public hasClaimed;

    constructor(address initialOwner) ERC721("Proof of Attendance", "POAP") Ownable(initialOwner) {
        _eventIdCounter = 0;
    }

    function createEvent(
        string memory name,
        string memory description,
        string memory location,
        uint256 date
    ) public {
        _eventIdCounter++;
        events[_eventIdCounter] = Event(name, description, location, date, msg.sender);
    }

    function claimAttendance(uint256 eventId, string memory tokenURI) public {
        require(events[eventId].organizer != address(0), "Event does not exist");
        require(!hasClaimed[eventId][msg.sender], "NFT already claimed");

        hasClaimed[eventId][msg.sender] = true;

        uint256 tokenId = uint256(keccak256(abi.encodePacked(eventId, msg.sender)));
        _safeMint(msg.sender, tokenId);
        _setTokenURI(tokenId, tokenURI);
    }
}
