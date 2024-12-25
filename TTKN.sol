// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//ERC Token Standard #20
//  import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TofieToken is ERC20 { 
    constructor() ERC20("TofieCoin", "TCN") { 
        _mint(msg.sender, 1000000 * 10**18); 
    } 
}
// contract TofieToken is IERC20 {
//   string public symbol;
//   string public name;
//   uint8 public decimals;
//   uint256 public _totalSupply;

//      mapping(address=>uint) balances;
//      mapping  (address => mapping(address =>uint)) allowed;

//     constructor() {
//        symbol ="TCN";
//        name = "TofieCoin";
//        decimals = 18;
//        _totalSupply = 1_000_001_000_000_000_000_000_000;// A million + 1 coin, with 18 zeros for decimal points
//        balances[0x6D73158beFea0Ec2A34B5e9829a8aa9f082AD302] = _totalSupply;
//        emit Transfer (address(0), 0x6D73158beFea0Ec2A34B5e9829a8aa9f082AD302, _totalSupply);
//     }

//       function totalSupply() external view returns (uint256){
//          return _totalSupply - balances[address(0)];
//       }

//       function balanceOf(address account) external view returns (uint256){
//          return balances[account];
//       }

//        function transfer(address recipient, uint256 amount) public returns (bool success){
//          balances[msg.sender] = balances[msg.sender]- amount;
//          balances[msg.sender]  = balances[recipient]   +amount; 
//          emit Transfer(msg.sender, recipient, amount);
//          return true;
//           }
//        function approve(address spender, uint256 amount) public returns (bool success){
//             allowed[msg.sender][spender]=amount;
//             emit Approval(msg.sender, spender, amount);
//             return true;
//          }


//        function transferFrom(address sender, address recipient, uint256 amount) public returns (bool success){
//           balances[sender] = balances[sender] - amount;
//           allowed[sender][msg.sender] = allowed[sender][msg.sender] - amount;
//           balances[recipient] = balances[recipient] + amount;
//           emit Transfer(sender, recipient, amount);
//           return true;
//        }
          

//        function allowance(address owner, address spender) public  view returns (uint256 remaining){
//                return allowed[owner][spender];
//           }
// }

// contract address 0xe48835b41efd2094041ec85f58d477f21976b136