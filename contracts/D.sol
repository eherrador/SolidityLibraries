pragma solidity >=0.4.25 <0.6.0;

library D {
    struct Counter { uint i; }

    function incremented(Counter storage self) public returns (uint) {
        return ++self.i;
    }
}
