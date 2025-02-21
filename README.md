# lottery_contract
# Lottery Contract

This project is a simple lottery smart contract written in Solidity. It allows users to participate in a lottery, and a winner is selected randomly from the participants.

## Features
- **Easy Participation**: Anyone can enter the lottery by calling `enterLottery()`.
- **Random Winner Selection**: The contract selects a random winner using block properties.
- **Transparent & Secure**: The winner's address is stored and can be verified on-chain.
- **Deployed on Edu Chain**

## Deployed Address
```
0x78156Ea63504a355e492661207663BD3b9dD4d35
```

## Functions
### `enterLottery()`
- Allows users to enter the lottery.
- Stores their address in the participants list.

### `pickWinner()`
- Randomly selects a winner from the participants.
- Requires at least one participant to execute.

## How It Works
1. Users call `enterLottery()` to participate.
2. The contract records their address.
3. When `pickWinner()` is called, it selects a random participant as the winner.

## Disclaimer
This contract relies on block attributes for randomness, which may not be fully secure. Consider using an oracle like Chainlink VRF for better randomness.

