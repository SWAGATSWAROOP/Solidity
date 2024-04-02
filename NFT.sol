// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// URI stands for Uniform Resource Identifier
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFT is ERC721URIStorage{
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;

    address contractAddress;

    constructor(address marketPlaceAddress) ERC721("SWAGAT","SWAG"){
        contractAddress = marketPlaceAddress;
    }

    function createToken(string memory tokenURI)public returns (uint256){
        _tokenIds.increment();
        uint256 newItemID = _tokenIds.current();
        _mint(msg.sender, newItemID);
        _setTokenURI(newItemID,tokenURI);

        setApprovalForAll(contractAddress,true);

        return newItemID;
    }
}


