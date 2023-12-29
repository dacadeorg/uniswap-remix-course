# Introduction to Uniswap V3 Swap

Uniswap V3 is a decentralized exchange protocol on the Ethereum blockchain, allowing users to swap various ERC-20 tokens. In this course, we will explore the Uniswap V3 Swap contract, which facilitates token swaps in a decentralized and trustless manner.

## Overview

The `UniswapV3SwapExamples` contract provides functions for swapping tokens using Uniswap V3. Let's dive into the basic concepts and structure of this contract.

## UniswapV3SwapExamples Contract

The contract includes:

- **swapExactInputSingleHop:** Facilitates single-hop swaps, allowing users to exchange one token for another directly.
- **swapExactInputMultiHop:** Enables multi-hop swaps, providing flexibility in routing for more complex token swaps.

Throughout this course, we'll break down each function, explore the router interface, and understand the necessary interfaces such as IERC20.

Let's start by examining the overall structure of the contract in the accompanying `tutorial.sol` file.
