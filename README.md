# MyNFTMarket ERC721 Contract

## Description

The MyNFTMarket contract is an ERC721 token contract developed using Solidity. It provides functionalities for creating an NFT marketplace where users can mint, buy, list for sale, and remove NFTs.

## Features

- **Mint NFT**: Allows the contract owner to mint new NFTs and assign them to a recipient.
- **Buy NFT**: Allows users to buy NFTs from other users by transferring ether.
- **List NFT For Sale**: Enables users to list their owned NFTs for sale with a specified price.
- **Remove NFT From Sale**: Allows users to remove their listed NFTs from sale.

## Getting Started

### Installation

To use the MyNFTMarket contract, you can deploy it on the Ethereum blockchain using tools like Remix, Truffle, or Hardhat. Ensure you have the appropriate dependencies installed, such as OpenZeppelin contracts for ERC721 and Ownable functionalities.

### Usage

1. Deploy the contract to the Ethereum blockchain using your preferred development environment.
2. Initialize the contract with a name and symbol for the NFTs.
3. Mint NFTs using the `mintNFT` function.
4. Buy NFTs from other users using the `buyNFT` function by specifying the token ID and sending ether.
5. List owned NFTs for sale using the `listNFTForSale` function with a specified price.
6. Remove listed NFTs from sale using the `removeNFTFromSale` function.

## Authors

- [Omemgboji Emmanuel](mailto:emmanuelomemgboji@gmail.com)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.