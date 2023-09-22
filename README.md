<h1 align="center">Bytecode-NFTs</h1>

![Banner Image](https://raw.githubusercontent.com/laurentpayot/minidenticons/main/img/minidenticons.svg)

The AI-NFT is a unique implementation of the ERC721 standard, designed to represent compiled bytecode. Each NFT not only signifies ownership of a particular piece of bytecode but also contains metadata that provides deterministic compilation instructions within a Cartesi Machine.

## Features

- **Deterministic Compilation**: Each AI-NFT contains metadata that allows users to deterministically reproduce the bytecode from the source code using the Cartesi Machine.
  
- **On-chain Metadata**: Instead of relying on external URIs for metadata, all necessary metadata is stored directly on-chain, ensuring transparency and immutability.

- **Open for All**: Anyone can mint their own AI-NFT, embedding their bytecode and associated metadata directly into the blockchain.

## Metadata Structure

Each AI-NFT contains the following metadata:

- **ROM Image Link**: Link to the ROM image stored on Bundlr/Arweave.
  
- **RAM Image Link**: Link to the RAM image stored on Bundlr/Arweave.
  
- **Root File System Link**: Link to the root file-system containing the source code and any dependencies, stored on Bundlr/Arweave.
  
- **Bash Script Link**: Link to the bash script that provides the exact steps to compile the source code within the Cartesi Machine.
  
- **Bytecode File Path**: The expected file path within the Cartesi Machine's file-system where the compiled bytecode will be generated.

## How to Use

1. **Deployment**: Deploy your own the AI-NFT contract, providing the desired name and symbol for the NFTs.

2. **Minting**: Call the `mintWithMetadata` function to mint a new AI-NFT. Provide the desired `tokenId` and all necessary metadata values.

3. **Querying**: Use the `tokenMetadata` mapping to retrieve the metadata associated with a specific `tokenId`.

## Dependencies

- [OpenZeppelin 2.x](https://docs.openzeppelin.com/contracts/2.x/): For the ERC721 implementation and minting functionality.

## Future Enhancements

- Integration with other decentralized storage solutions.
  
- Enhanced verification mechanisms to ensure the authenticity of the bytecode and source code.
