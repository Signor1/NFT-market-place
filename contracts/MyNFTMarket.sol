// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFTMarket is ERC721, Ownable {
    uint256 private tokenIdCounter;

    constructor(string memory name, string memory symbol) ERC721(name, symbol) {
        tokenIdCounter = 0;
    }

    function mintNFT(
        address recipient,
        string memory tokenURI
    ) public onlyOwner returns (uint256) {
        uint256 newTokenId = tokenIdCounter;

        _safeMint(recipient, newTokenId);

        _setTokenURI(newTokenId, tokenURI);

        tokenIdCounter++;

        return newTokenId;
    }

    function buyNFT(uint256 tokenId) public payable {
        require(_exists(tokenId), "Token ID does not exist");
        address owner = ownerOf(tokenId);
        require(owner != msg.sender, "You already own this NFT");
        require(msg.value > 0, "Value sent must be greater than 0");
        address payable ownerAddress = payable(owner);
        ownerAddress.transfer(msg.value);
        _transfer(owner, msg.sender, tokenId);
    }

    function listNFTForSale(uint256 tokenId, uint256 price) public {
        require(_exists(tokenId), "Token ID does not exist");
        require(
            ownerOf(tokenId) == msg.sender,
            "You are not the owner of this NFT"
        );
        // Additional logic for listing NFT for sale
    }

    function removeNFTFromSale(uint256 tokenId) public {
        require(_exists(tokenId), "Token ID does not exist");
        require(
            ownerOf(tokenId) == msg.sender,
            "You are not the owner of this NFT"
        );
        // Additional logic for removing NFT from sale
    }
}
