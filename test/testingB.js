const B = artifacts.require("B");

contract('B', accounts => {
    it("Successful!", async () => {
        const instanceOfB = await B.deployed();
        const returnedResult = await instanceOfB.increment.call();
        console.log(returnedResult);
        assert.equal(1, returnedResult, "Failed!");
    });
});