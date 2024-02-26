// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFTMarketplace is ERC721, Ownable {
    uint256 public nextTokenId;

    struct Listing {
        address seller;
        uint256 price;
        bool isForSale;
    }

    mapping(uint256 => Listing) public listings;

    constructor() ERC721("NFTMarketplace", "NFTM") {}

    function mint(address to) external onlyOwner {
        uint256 tokenId = nextTokenId++;
        _safeMint(to, tokenId);
    }

    function buy(uint256 tokenId) external payable {
        require(_exists(tokenId), "Token ID does not exist");
        require(listings[tokenId].isForSale, "Token is not for sale");
        require(msg.value >= listings[tokenId].price, "Insufficient funds");

        address seller = listings[tokenId].seller;
        listings[tokenId].isForSale = false;
        listings[tokenId].price = 0;
        _transfer(seller, msg.sender, tokenId);

        payable(seller).transfer(msg.value);
    }

    function listForSale(uint256 tokenId, uint256 price) external {
        require(_exists(tokenId), "Token ID does not exist");
        require(
            ownerOf(tokenId) == msg.sender,
            "You are not the owner of this token"
        );

        listings[tokenId] = Listing({
            seller: msg.sender,
            price: price,
            isForSale: true
        });
    }

    function removeListing(uint256 tokenId) external {
        require(_exists(tokenId), "Token ID does not exist");
        require(
            ownerOf(tokenId) == msg.sender,
            "You are not the owner of this token"
        );

        delete listings[tokenId];
    }

    function setPrice(uint256 tokenId, uint256 price) external {
        require(_exists(tokenId), "Token ID does not exist");
        require(
            ownerOf(tokenId) == msg.sender,
            "You are not the owner of this token"
        );

        listings[tokenId].price = price;
    }

    function withdraw() external onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }
}
