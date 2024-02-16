// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LinkToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("Link", "LK") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply*uint256(decimals())); //all in 10^18 format for wei format
    }

    function mint(address account,uint256 amount) public  onlyOwner returns(bool){
        require(account != address(this) && amount != uint256(0),"ERC20 : Invalid");
        _mint(account, amount);
        return true;
    }  

    function burn(address account,uint256 amount)public onlyOwner returns(bool){
        require(account != address(this) && amount != uint256(0),"Cannot Burn");
        _burn(account, amount);
        return true;
    }

    function buy() public payable returns(bool){
        require(msg.sender.balance >= msg.value && msg.value != 0 ether, "ICO: No ether sent");
        uint amount = msg.value * 1000; // 1000 tokens per ether
        _transfer(owner(), _msgSender(), amount);
        return true;
    }


    function withdraw(uint256 amount) public onlyOwner returns(bool){
        require(amount <= address(this).balance,"ICO: function withdraw invalid input");
        payable(_msgSender()).transfer(amount);
        return true;
    } 


    
}