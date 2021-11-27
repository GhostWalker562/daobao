const Migrations = artifacts.require("Migrations");
const Daobao = artifacts.require("DaobaoToken");
const WMATIC = artifacts.require("WMATICToken");
const Backend = artifacts.require("backend");

module.exports = async function (deployer) {
  await deployer.deploy(Migrations);
 await deployer.deploy(WMATIC);
   const wmatic  = await WMATIC.deployed();
  await deployer.deploy(Backend,1,5,80, wmatic.address);
   const backend  = await WMATIC.deployed();
   
};
