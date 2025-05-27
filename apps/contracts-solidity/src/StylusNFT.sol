// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

interface IGameOfLifeNFT {
    function tokenURI(uint256 tokenId) external view returns (string memory);
}

contract NFT is ERC721, Ownable {
    using Strings for uint256;
    // Keep track of all tokens
    uint256[] private _allTokens;
    
    // TODO: Replace with the address of the Rust contract
    address private constant GAME_OF_LIFE_CONTRACT = 0xA6E41fFD769491a42A6e5Ce453259b93983a22EF;

    constructor(address initialOwner) ERC721("MyNFT", "MNFT") Ownable(initialOwner) {}

    function mint() public returns (uint256) {
        uint256 tokenId = _allTokens.length + 1;
        _allTokens.push(tokenId);
        _safeMint(msg.sender, tokenId);
        return tokenId;
    }

    function totalSupply() public view returns (uint256) {
        return _allTokens.length;
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        // TODO: Implement this function to return the token URI by calling the Stylus contract.
        // Hint: Use the IGameOfLifeNFT interface and the GAME_OF_LIFE_CONTRACT address to call tokenURI(tokenId).
        //
        // Write your code below:
        
    }

}
