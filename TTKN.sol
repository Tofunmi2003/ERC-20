// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//ERC Token Standard #20
 import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract TofieToken is IERC20 {
  string public symbol;
  string public name;
  uint8 public decimals;
  uint256 public _totalSupply;

     mapping(address=>uint) balances;
     mapping  (address => mapping(address =>uint)) allowed;

    constructor() {
       symbol ="TTKN";
       name = "Tofietoken coin";
       decimals = 18;
       _totalSupply = 1_000_001_000_000_000_000_000_000;// A million + 1 coin, with 18 zeros for decimal points
       balances[YOUR_WALLET_ADDRESS] = _totalSupply;
       emit Transfer (address(0), YOUR_WALLET_ADDRESS, _totalSupply);
    }

      function totalSupply() external view returns (uint256){
         return _totalSupply - balances[address(0)];
      }

      function balanceOf(address account) external view returns (uint256){
         return balances[account];
      }

       function transfer(address recipient, uint256 amount) public returns (bool success){
         balances[msg.sender] = balances[msg.sender]- amount;
         balances[msg.sender]  = balances[recipient]   +amount; 
         emit transfer(msg.sender, recipient, amount);
         return true;
          }
      
}