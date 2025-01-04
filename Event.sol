// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    uint256 number;
    
    // Definisi event
    event NumberStored(address sender, uint256 number);
    
    function store(uint256 _number) public {
        number = _number;
        // Emit event saat nilai berubah
        emit NumberStored(msg.sender, _number);
    }   
    
    function retrieve() public view returns (uint256) {
        return number;
    }
}