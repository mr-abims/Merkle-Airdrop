//SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MerkleCheck {
    bytes32 public root =
        0x91f618a227df3c5155c00ee5cc960e9f54c3d654161b0da1e60485cfdeda4cc0;

    mapping(address => bool) TokenClaimed;
  

    IERC20 TokenAddress;

    constructor (address _tokenaddress) {
        TokenAddress = IERC20(_tokenaddress);

    }

    function checkValid(
        bytes32[] calldata _merkleProof,
        uint256 _itemId,
        uint256 _amount
    ) public {
        require(!TokenClaimed[msg.sender], "Address has already claimed");
        bytes32 leaf = keccak256(
            abi.encodePacked(msg.sender, _itemId, _amount)
        );
        require(
            MerkleProof.verify(_merkleProof, root, leaf),
            "Incorrect proof"
        );
        // Mint token
        
        TokenAddress.transfer(msg.sender, _amount* 10**18);

        // Mark address has claimed
        TokenClaimed[msg.sender] = true;
    }
}
