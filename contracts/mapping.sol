// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

    contract Mycontarct {
    mapping (uint => string)public name ;
    mapping (uint => book)public books;
    mapping (address => mapping(uint => book)) public myBooks;

    struct book{
        string title;
        string author;

    }

        constructor() {
            name[1]= "swastik";
            name[2]= "subhamay";
            name[3] =" subhraneel";
        } 

        function addbook (
            uint _id,
            string memory _title,
            string memory _author) public {
             books[_id] = book(_title,_author)  ;
            }

            function addMybook (
            uint _id,
            string memory _title,
            string memory _author) public {
            books[_id] = book(_title,_author)  ;
            myBooks[msg.sender][_id] = book(_title,_author);
            }   

    }
