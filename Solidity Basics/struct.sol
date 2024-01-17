// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract structure{
    struct Book{
        string title;
        string author;
        uint ID;
        uint price;
    }

    //Define a struct:-Variable to define a struct
    Book book;

    function setBookTitle() public {
        book = Book("BlockChian","Swagat Swaroop",12,4000);
    }

    function returnBooK() public  view returns(uint){
        return book.ID;
    }

    function returnprice() public view returns (uint){
        return book.price;
    }

    function returnBookauthor() public view returns (string memory){
        return book.author;
    }

}

