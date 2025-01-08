import hardhat from "hardhat";
const { ethers } = hardhat;

// One Story
describe("Token Contract", function () {
  it("Once Deployed, owner should have 1000 tokens", async function () {
    const [owner] = await ethers.getSigners()[0];
    const Token = await ethers.getContractFactory("Token");
    const hhtoken = await Token.deploy();
    console.log(hhtoken);

    const ownerBalance = await hhtoken.balanceOf(owner.address);
    expect(1000).to.equal(ownerBalance);
  });
});
