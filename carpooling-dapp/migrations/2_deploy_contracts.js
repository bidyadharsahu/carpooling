const Carpooling = artifacts.require("Carpooling");

module.exports = function(deployer) {
  deployer.deploy(Carpooling);
};