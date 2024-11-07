// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract LaptopToken is ERC20, Ownable {
    constructor() ERC20("Laptop", "LPT") {}

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount * (10 ** decimals()));
    }

    function burn(uint256 _amount) public onlyOwner {
        _burn(msg.sender, _amount * (10 ** decimals()));
    }
}