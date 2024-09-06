// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract HotelRoom {

    enum status {vacant,occupied}
    status public currentstatus;
    
    event occupy(address _accupant, uint _value);

     address payable public owner;

    constructor () {
        owner = payable(msg.sender);
        currentstatus = status.vacant ;    
    }
    modifier onlywhilevacant{
        //check status
         require(currentstatus == status.vacant, "it is occupied" );
         _;
    }
    
    modifier costs (uint _amount){
        //cheak price
        require(msg.value >= _amount,"not enough price provided");
        _;
    }

    function book () public payable onlywhilevacant costs(2 ether) {
        currentstatus = status.occupied;

        (bool sent, bytes memory data) = owner.call{value:msg.value}("");
        require(true);

        emit  occupy(msg.sender,msg.value);
        }
    }
    
