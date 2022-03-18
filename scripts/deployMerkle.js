const { ethers } = require("hardhat");
async function main() {
  //   const owner = "0x8626f6940e2eb28930efb4cef49b2d1f2c9c1199";
  //   const ownerSigner = await ethers.getSigner(owner);
  const tokenAddress = "0x9730bCcdC20aF2Ff3a6372E1e824feC512E51A55";
  // deploying airdrop
  const MerkleAirdrop = await ethers.getContractFactory("MerkleCheck");
  const merkleairdrop = await MerkleAirdrop.deploy(tokenAddress);
  await merkleairdrop.deployed();

  console.log("merkle deployed to:", merkleairdrop.address);

  //   await merkleairdrop.connect(ownerSigner).checkValid([], 1, 1000);
  //   console.log("Claim was sucessfull");
}
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
