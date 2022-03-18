const { ethers } = require("hardhat");
async function main() {
  const TokenContract = await ethers.getContractFactory("Merkle");
  const tokencontract = await TokenContract.deploy();
  await tokencontract.deployed();
  console.log("token address", tokencontract.address);
}
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

// Token Address :0x5FbDB2315678afecb367f032d93F642f64180aa3
