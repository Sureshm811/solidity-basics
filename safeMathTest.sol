// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
contract safeNumbertest {

    uint8 public BigNumber = 255;

    function add() public {
       
       // if i want to use this code in a vm with a vertion of newer than 0.6.0
       //i have to use unchacked before the bignumber  

       //unchacked{}

        BigNumber = BigNumber +1 ;
    }

}
