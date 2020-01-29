const A = artifacts.require("A");

contract('A', accounts => {
    it("The returned contract address is the same address as the library.", async () => {
        const instanceOfA = await A.deployed();
        const expectedAddress = instanceOfA.address;
        const returnedAddress = await instanceOfA.a.call();
        console.log(expectedAddress);
        console.log(returnedAddress);
        assert.equal(expectedAddress, returnedAddress, "The returned contract address doesn't have the same address as the library.");
    });
});