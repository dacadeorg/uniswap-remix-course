# IWETH Interface in Uniswap V3 (Optional)

In this optional section, we'll briefly explore the `IWETH` interface. The WETH (Wrapped Ether) interface is used when interacting with the wrapped form of Ether as an ERC-20 token. Understanding the `IWETH` interface can be beneficial for scenarios where Ether needs to be exchanged within the Uniswap V3 Swap contract.

## `IWETH` Interface

The `IWETH` interface extends the standard `IERC20` interface and includes additional functions specific to Wrapped Ether. Let's take a look at these functions:

### 1. `deposit (Line 103)`
This function deposits Ether into the contract and returns the equivalent amount of WETH.

### 2. `withdraw (Line 105)`
This function withdraws the specified amount of WETH from the contract and returns the equivalent amount of Ether.

While this section is optional, understanding the IWETH interface can be valuable in scenarios where direct interaction with Ether is required within the Uniswap V3 Swap contract.
