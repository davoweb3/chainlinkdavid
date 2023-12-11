// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Interface for the FetchFromArray contract
interface FetchFromArray {
    function id() external view returns (string memory);
}

contract ConditionalNFTMinter is ERC721, Ownable {
    address public fetchFromArrayAddress = 0xDEC109458e6Bc0162D6D4Dd09D4F3Ac6E0c590aa; // Address of the FetchFromArray contract

    uint256 private latestTokenId;

    constructor() ERC721("IDNFT", "IDNFT") Ownable(msg.sender) {}

    function mintNFT() external {
        FetchFromArray fetchFromArray = FetchFromArray(fetchFromArrayAddress);
        string memory info = fetchFromArray.id();

        // Check the condition to mint the token
        if (keccak256(bytes(info)) == keccak256(bytes("true"))) {
            _safeMint(msg.sender, latestTokenId);
            latestTokenId++;
        }
    }

    function getIdFromExternalContract() external view returns (string memory) {
        FetchFromArray fetchFromArray = FetchFromArray(fetchFromArrayAddress);
        return fetchFromArray.id();
    }
}