// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract counter{
    uint count;

    constructor()  {
        count = 0;

    }

    function getcount () public view returns(uint){
        return count;
    }
            // or 
            // uint public count =1;
    
    function incrementcount() public {
        count = count +1;
    }
}