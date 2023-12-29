// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract UniswapV3SwapExamples {
    ISwapRouter constant router =
    ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);

    // Functions will be detailed in the following sections
    // ...
}


interface ISwapRouter {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint deadline;
        uint amountIn;
        uint amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    function exactInputSingle(
        ExactInputSingleParams calldata params
    ) external payable returns (uint amountOut);

    struct ExactInputParams {
        bytes path;
        address recipient;
        uint deadline;
        uint amountIn;
        uint amountOutMinimum;
    }

    function exactInput(
        ExactInputParams calldata params
    ) external payable returns (uint amountOut);
}

interface IERC20 {
    // IERC20 interface definition
    // ...
}

interface IWETH is IERC20 {
    // IWETH interface definition (if relevant)
    // ...
}
