pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721Mintable.sol";

contract BytecodeNFT is ERC721Full, ERC721Mintable {
    struct BytecodeMetadata {
        string romImageLink;
        string ramImageLink;
        string rootFileSystemLink;
        string bashScriptLink;
        string bytecodeFilePath;
    }

    mapping(uint256 => Metadata) public tokenMetadata;

    constructor(string memory name, string memory symbol) public ERC721Full(name, symbol) {}

    function mintWithMetadata(
        address to,
        uint256 tokenId,
        string memory romImageLink,
        string memory ramImageLink,
        string memory rootFileSystemLink,
        string memory bashScriptLink,
        string memory bytecodeFilePath
    ) public {
        mint(to, tokenId);
        BytecodeMetadata memory metadata = BytecodeMetadata({
            romImageLink: romImageLink,
            ramImageLink: ramImageLink,
            rootFileSystemLink: rootFileSystemLink,
            bashScriptLink: bashScriptLink,
            bytecodeFilePath: bytecodeFilePath
        });
        tokenMetadata[tokenId] = metadata;
    }
}
