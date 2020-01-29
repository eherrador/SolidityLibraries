pragma solidity >=0.4.25 <0.6.0;

import "./D.sol";

contract B {
    using D for D.Counter;

    D.Counter counter;

    function increment() public returns (uint) {
        return counter.incremented();
    }
}