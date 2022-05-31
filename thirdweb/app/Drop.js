import { ThirdwebSDK } from "@thirdweb-dev/sdk";

const sdk = new ThirdwebSDK("rinkeby");
const contract = sdk.getNFTDrop("0xE366014D15A0408845570f367A8164e4CF50f174");

const nfts = await contract.getAll();
console.log (nfts)

const nftAddress = await contract.getAddress();
console.log(nftAddress);