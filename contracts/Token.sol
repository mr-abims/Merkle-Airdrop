// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "@openzeppelin/contracts/token/ERC20/ERC20.sol"



contract Merkle is ERC20 {
    constructor() ERC20("Merkle", "MRK") {
        _mint(msg.sender, 10000* 10**18);

    }
}

// TokenAddress: 0x5FbDB2315678afecb367f032d93F642f64180aa3
// hash:  0xe50617d0dea0e80d15b5e6b54f9696895ff0cf60d2e0094d57b07140cdbeae18;