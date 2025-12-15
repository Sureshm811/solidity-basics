// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
import {priceConverter} from "./priceConverter.sol";
using priceConverter for uint256;

contract fundme {
    uint256 public minimumUsd = 1e15;
    address[] public funders;
    mapping (address funder => uint256 amountFunded) public addressToAmountFunded;
    
function fundMe() public payable {
    require(msg.value.getConversionRate() >= minimumUsd, "You need to spend more ETH!");
    funders.push(msg.sender);
    addressToAmountFunded[msg.sender] = addressToAmountFunded [msg.sender] + msg.value;
}
function withdraw () public {
    for(uint256 funderIndex = 0;
    funderIndex > funders.length;
    funderIndex++)
    {address funder = funders[funderIndex];
    addressToAmountFunded[funder]= 0 ;
    }
    

}

}
