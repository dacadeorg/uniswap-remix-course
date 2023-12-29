# Multi-Hop Swaps with Uniswap V3

In this section, we'll delve into the `swapExactInputMultiHop` function in the `UniswapV3SwapExamples` contract. This function enables more complex token swaps by allowing users to specify a custom path through multiple liquidity pools.

## `swapExactInputMultiHop` Function

The `swapExactInputMultiHop` function has the following parameters:

- **path:** The encoded path specifying the route for the multi-hop swap.
- **tokenIn:** The address of the input token to be swapped.
- **amountIn:** The amount of input tokens to swap.

Let's break down the steps taken within this function:

1. **Transfer Tokens:**
    Line 14 transfers the specified amount of input tokens from the sender to the contract.

2. **Approve Router:**
    Line 15 approves the router to spend the transferred tokens.

3. **Define Swap Parameters:**
    Line 17 defines the swap parameters using `ExactInputParams`. This struct includes the following parameters:
    - `path`: The encoded path specifying the route for the multi-hop swap.
    - `recipient`: The address that receives the output tokens.
    - `deadline`: The deadline for the swap. If the swap is executed after this timestamp, the swap will revert.
    - `amountIn`: The amount of input tokens to swap. This amount must be less than or equal to the amount transferred to the contract.
    -  `amountOutMinimum`: The minimum amount of output tokens to receive. If the swap results in less than this amount, the swap will revert.

4. **Execute Multi-Hop Swap:**
    Line 29 executes the multi-hop swap using the Uniswap V3 router.
