const C = artifacts.require("C");
const A = artifacts.require("A");

const D = artifacts.require("D");
const B = artifacts.require("B");

module.exports = function(deployer) {
    deployer.deploy(C);
    deployer.link(C, A);
    deployer.deploy(A);

    deployer.deploy(D);
    deployer.link(D, B);
    deployer.deploy(B);

    /*deployer.deploy(C).then(() => {
        deployer.deploy(A);
    });
    deployer.link(C, A);*/
};