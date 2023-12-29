# Single-Hop Swaps with Uniswap V3

In this section, we'll explore the `swapExactInputSingleHop` function in the `UniswapV3SwapExamples` contract. This function allows users to perform single-hop token swaps, exchanging one token for another directly within a liquidity pool.

## `swapExactInputSingleHop` Function

The `swapExactInputSingleHop` function facilitates single-hop swaps. Let's break down the key steps in the code:

1. **Transfer Tokens:**
    Line 14 transfers the specified amount of input tokens from the sender to the contract.

2. **Approve Router:**
    Line 15 approves the router to spend the transferred tokens.

3. **Define Swap Parameters:**
    Line 17 defines the swap parameters using `ExactInputSingleParams`. This struct includes the following parameters:
    - `tokenIn`: The address of the input token.
    - `tokenOut`: The address of the output token.
    - `fee`: The fee tier of the pool. 
    - `recipient`: The address that receives the output tokens.
    - `deadline`: The deadline for the swap. If the swap is executed after this timestamp, the swap will revert.
    - `amountIn`: The amount of input tokens to swap. This amount must be less than or equal to the amount transferred to the contract.
    - `amountOutMinimum`: The minimum amount of output tokens to receive. If the swap results in less than this amount, the swap will revert.
    - `sqrtPriceLimitX96`: The square root of the price limit. This parameter is optional. If set to 0, there is no price limit. If set to a non-zero value, the swap will revert if the price limit is violated.

4. **Execute Swap:**
    Line 29 executes the swap using the Uniswap V3 router. The router will transfer the output tokens to the recipient.


