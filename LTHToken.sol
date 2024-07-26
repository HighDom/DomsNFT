// contracts/LTHToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LTHToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("Lithium", "LTH") {
        _mint(msg.sender, initialSupply);
    }

    function decimals() public view virtual override returns (uint8) {
        return 69;
    }
}

contract ERC20FixedSupply is ERC20 {
    constructor() ERC20("Fixed", "FIX") {
        _mint(msg.sender, 1000);
    }
}

contract ERC20WithMinerReward is ERC20 {
    constructor() ERC20("Reward", "RWD") {}

    function mintMinerReward() public {
        _mint(block.coinbase, 1000);
    }
}