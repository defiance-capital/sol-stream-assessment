// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract YieldStreamer {
    error ZeroAddress();
    error ZeroAmount();
    error InsufficientBalance();

    IERC20 public immutable token;
    uint256 public constant YIELD_RATE_PER_SECOND = 10; 

    // TODO: Add tracking mappings/structs for users here

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);
    event YieldClaimed(address indexed user, uint256 amount);

    constructor(address _token) {
        if (_token == address(0)) revert ZeroAddress();
        token = IERC20(_token);
    }

    function deposit(uint256 amount) external {
        // TODO: Implement logic (Update yield tracking before changing principal balance)
    }

    function pendingYield(address user) public view returns (uint256) {
        // TODO: Calculate linear time delta * YIELD_RATE_PER_SECOND
        return 0;
    }

    function claimYield() external {
        // TODO: Implement logic
    }

    function withdraw(uint256 amount) external {
        // TODO: Implement logic
    }
}
