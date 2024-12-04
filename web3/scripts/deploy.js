const { ethers } = require("hardhat");

async function main() {
    const POAP = await ethers.getContractFactory("POAP");
    const poap = await POAP.deploy();
    await poap.deployed();

    console.log("POAP deployed to:", poap.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });

