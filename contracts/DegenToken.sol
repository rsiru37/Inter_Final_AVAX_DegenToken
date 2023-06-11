// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    constructor() ERC20("Degen", "DGN") {}
    string public choices="COMMON, RARE, UNIQUE";
    uint public a=37;
        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
            }

        function decimals() override public pure returns(uint8){
            return 0;
        }

        function redeem(string memory x) public payable {
            if(keccak256(abi.encodePacked(x)) == keccak256(abi.encodePacked("COMMON"))){
                require(balanceOf(msg.sender)>=100, "You dont have enough DGN Tokens to purchase the Common NFT, Tokens required must be more than 100");
                approve(msg.sender,100);
                transferFrom(msg.sender,0x884D7cFe40526BCe1A5be9c89Fd666b8eFcF2056, 100);
            }
            else if(keccak256(abi.encodePacked(x)) == keccak256(abi.encodePacked("RARE")))
            {
                require(balanceOf(msg.sender)>=500, "You dont have enough DGN Tokens to purchase the RARE NFT, Tokens required must be more than 500");
                approve(msg.sender,500);
                transferFrom(msg.sender, 0x884D7cFe40526BCe1A5be9c89Fd666b8eFcF2056, 500);
            }
            else if(keccak256(abi.encodePacked(x)) == keccak256(abi.encodePacked("UNIQUE"))){
                require(balanceOf(msg.sender)>=1000, "You dont have enough DGN Tokens to purchase the Common NFT, Tokens required must be more than 1000");
                approve(msg.sender,1000);
                transferFrom(msg.sender, 0x884D7cFe40526BCe1A5be9c89Fd666b8eFcF2056, 1000);
            }
            else{
                revert("INVALID CHOICE!");
            }
        }
}
