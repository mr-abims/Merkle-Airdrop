### Merkle Airdrop Contract

This is a contract that helps transfer token to whitelisted address upon submission of a proof which will be verified in real time by the scripts.

Merkle tree data structure is the very efficient way to check if arbitrary data is in some list when we're not able to store this list in contract, it takes too much storage space. In our case we store a single hash in contract, allowing user to build the proof by himself. This scheme has advantage in sotrage requirements, but requires additional computations on client side, so, use wisely.
