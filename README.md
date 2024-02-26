# NFT Marketplace Smart Contract

This repository contains a Solidity smart contract for an NFT marketplace that allows users to mint, buy, and sell non-fungible tokens (NFTs). The contract implements the ERC-721 standard and includes functions for minting new NFTs, transferring ownership, listing NFTs for sale, and more.

## Features

- Mint new NFTs
- Buy NFTs listed for sale
- List NFTs for sale
- Remove listings
- Set prices for listed NFTs
- Basic access control mechanisms to restrict certain functions to the contract owner

## Getting Started

To deploy and interact with the smart contract, follow these steps:

1. Clone this repository:

   ```bash
   git clone repo
   ```

2. Install dependencies:

   ```bash
   npm install
   ```

3. Deploy the smart contract to a supported blockchain network.

4. Interact with the deployed contract using a compatible wallet or through a decentralized application (dApp).

## Usage

Below are some common interactions with the smart contract:

- **Minting NFTs**: Owners can mint new NFTs by calling the `mint` function. Only the contract owner is allowed to mint new tokens.

- **Buying NFTs**: Users can purchase NFTs listed for sale by calling the `buy` function and sending the required funds. Upon successful purchase, ownership of the NFT is transferred to the buyer.

- **Listing NFTs for Sale**: Owners of NFTs can list them for sale by calling the `listForSale` function and specifying the price.

- **Removing Listings**: Owners of NFTs can remove their listings by calling the `removeListing` function.

- **Setting Prices**: Owners of NFTs can update the price of their listings by calling the `setPrice` function.

- **Withdrawing Funds**: The contract owner can withdraw accumulated funds from sales by calling the `withdraw` function.

## Contributing

Contributions to this project are welcome. Feel free to open issues or pull requests to suggest changes, report bugs, or add new features.

## License

This project is licensed under the [MIT License](LICENSE).
