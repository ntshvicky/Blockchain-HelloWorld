//write solidity version for compatibility
pragma solidity >=0.4.22 <0.9.0;

contract Greeter {
    string greeting;

    //set the setter for hello world msg
    function setGreet(string memory _greeting) public {
        greeting = _greeting;
    }

    //set the getter for hello world msg
    function getGreet() view public returns (string memory) {
        return greeting;
    }
}