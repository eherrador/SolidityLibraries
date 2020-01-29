pragma solidity >=0.4.25 <0.6.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/A.sol";
import "../contracts/B.sol";

contract TestA {
    function testingA() public {
        A a = A(DeployedAddresses.A());
        address expectedAddress = address(a);

        address returnedAddress = a.a();

        Assert.equal(returnedAddress, expectedAddress, "The returned contract address is the same address as the library.");
    }

    function testingB() public {
        B b = B(DeployedAddresses.B());
        uint result = b.increment();

        Assert.equal(1, result, "Successful!");
    }
}