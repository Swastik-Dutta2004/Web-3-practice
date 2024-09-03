// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract mycontact {

    int256 public myint256 = 1;
    uint8 public myuint8 = 1;
    uint public myuint = 1;
    uint256 public myuint256 = 1;

    string public mystring = "hello world";
    bytes public mybytes = "hello world";
    
    address public myaddress = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    struct mystruct {
        uint256 myuint256;
        string mystring;
        address myaddress;
    }
    mystruct public mystruct1 = mystruct(1,"swastik",0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    function getvalue () public pure returns(uint){
    uint value = 1;
    return value ;
}
}