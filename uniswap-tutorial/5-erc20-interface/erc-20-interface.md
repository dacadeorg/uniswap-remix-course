# IERC20 Interface in Uniswap V3

In this section, we'll explore the `IERC20` interface, a standard interface for interacting with ERC-20 tokens. Understanding this interface is crucial as it is used in the Uniswap V3 Swap contract to handle token transfers and approvals.

## `IERC20` Interface

The `IERC20` interface defines a standard set of functions that ERC-20 tokens must implement. Let's examine the key functions within this interface:

### 1. `totalSupply (Line 91)`
This function returns the total supply of the token.

### 2. `balanceOf (Line 93)`
This function returns the balance of the specified address.

### 3. `transfer (Line 95)`
This function transfers tokens from the sender to the specified recipient.

### 4. `allowance (Line 97)`
This function returns the amount of tokens that the spender is allowed to spend on behalf of the owner.

### 5. `approve (Line 99)`
This function approves the spender to spend the specified amount of tokens on behalf of the sender.

### 6. `transferFrom (Line 101)`
This function transfers tokens from the specified sender to the recipient. The function can only be called by the spender if the spender is allowed to spend the specified amount of tokens on behalf of the sender.
