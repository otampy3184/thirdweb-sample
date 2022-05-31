// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// openzeppelinのコントラクトをimport
import "../node_modules/@openzeppelin/contracts/token/erc721/ERC721.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";
import "../node_modules/@openzeppelin/contracts/utils/Counters.sol";

contract SampleNFT is ERC721, Ownable {
    using Counters for Counters.Counter;
    constructor() ERC721("Sapmle", "SMP"){}
    Counters.Counter private _tokenIdCounter;

    function _baseURI() internal pure override returns (string memory) {
        return "https://raw.githubusercontent.com/otampy3184/metadata-okuyo/main/meta/";
    }

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }
}