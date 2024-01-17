// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract A{
    function dosomething() external {
        // revert("Reverting back");
    }
}

contract B{
    // Using it so that deploying smart contract B also deploy A
    A a = new A();
    string public status = "Not";

    // using try and catch to maintain mutability
    function go() public {
        try a.dosomething()
        {
            status = "Success";
        }
        catch {
            status = "failure";
        }
    }
}