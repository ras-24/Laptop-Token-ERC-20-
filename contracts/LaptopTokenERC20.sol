// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contacts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contacts/access/Ownable.sol";

contract LaptopToken is ERC20, Ownable {
    constructor() ERC20("Laptop", "LPT") {}

}