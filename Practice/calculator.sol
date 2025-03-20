// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// 1️⃣ Make a contract called Calculator
// 2️⃣ Create Result variable to store result
// 3️⃣ Create functions to add, subtract, and multiply to result
// 4️⃣ Create a function to get result

contract Calculator {
    uint256 result = 0;
    function add(uint256 a) public {
        result += a;
    }

    function subract(uint256 a) public  {
        result -= a;
    }

    function mutltiply(uint256 a) public {
        result *= a;
    }
    function divide(uint256 a) public  {
        result /= a;
    }

    function getResult() public view returns (uint256){
        return result;
    }

}