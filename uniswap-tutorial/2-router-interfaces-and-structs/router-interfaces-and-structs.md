# Uniswap V3 Router Interface and Structs

In this section, we'll explore the `ISwapRouter` interface, which is a crucial component of the Uniswap V3 Swap contract. The interface defines the function signatures required for interacting with the Uniswap V3 router. Additionally, we'll examine two important structs: `ExactInputSingleParams` and `ExactInputParams`.

## `ISwapRouter` Interface

The `ISwapRouter` interface acts as the gateway for executing swaps on Uniswap V3. It provides the following essential functions:

### 1. `exactInputSingle (Line 25)`

This function executes a single-hop swap and takes in a ExactInputSingleParams struct as a parameter(Line 26), exchanging one token for another directly within a liquidity pool. The function takes the following parameters:

- `tokenIn and tokenOut`: The addresses of the input and output tokens.
- `fee`: The fee tier of the pool.
- `recipient`: The address that receives the output tokens.
- `deadline`: The deadline for the swap. If the swap is executed after this timestamp, the swap will revert.
- `amountIn`: The amount of input tokens to swap. This amount must be less than or equal to the amount transferred to the contract.
- `amountOutMinimum`: The minimum amount of output tokens to receive. If the swap results in less than this amount, the swap will revert.
- `sqrtPriceLimitX96`: The square root of the price limit. This parameter is optional. If set to 0, there is no price limit. If set to a non-zero value, the swap will revert if the price limit is violated.

### 2. `exactInput (Line 37)`
This function executes a multi-hop swap and takes in a ExactInputParams struct as a parameter(Line 38), allowing users to specify a custom path through multiple liquidity pools. The function takes the following parameters:
- `path`: The encoded path specifying the route for the multi-hop swap.
- `recipient`: The address that receives the output tokens.
- `deadline`: The deadline for the swap. If the swap is executed after this timestamp, the swap will revert.
- `amountIn`: The amount of input tokens to swap. This amount must be less than or equal to the amount transferred to the contract.
- `amountOutMinimum`: The minimum amount of output tokens to receive. If the swap results in less than this amount, the swap will revert.

Understanding these components is vital for leveraging the Uniswap V3 Swap contract effectively. 
