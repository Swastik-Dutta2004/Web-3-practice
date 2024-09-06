// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
    contract ownable {

        address owner ;
        modifier onlyowner (){
             require(msg.sender==owner,"must be owner");
        _;
         }

        constructor ()  {
            owner = msg.sender;
        }
    }

    contract SecretVault{
        string secret;

        constructor(string memory _secret)  {
            secret = _secret;
        }

        function getsecret ()  public view returns (string memory){
        return secret;
         }
    }
    contract MyContract is ownable{
        address secretVault;
    

        constructor (string memory _secret)  {
            SecretVault _secretVault = new SecretVault(_secret);
            secretVault = address (_secretVault) ;
            super;
        }
        
        function getsecret ()  public view onlyowner returns (string memory){
        return SecretVault(secretVault).getsecret();
        }

    }
        