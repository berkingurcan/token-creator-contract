//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor(string memory _TokenName, string memory _TokenSymbol, uint _amount) ERC20(_TokenName, _TokenSymbol) {
        _mint(msg.sender, _amount * 10 ** decimals());
    }
}

contract TokenFactory {
    Token[] public tokens;
    function create(string memory _TokenName, string memory _TokenSymbol, uint _amount) public {
        Token token = new Token(_TokenName, _TokenSymbol, _amount);
        tokens.push(token);
    }
}
