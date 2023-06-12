# DEGEN TOKEN - AVAX CHAIN

A Simple Project that demonstrates the deployment of a Custom ERC-20 Token(DGN) on AVAX-Testnet and executing common functionalities like, minting, Transfer, Burning & Redeeming the token to get in-game assets.

## Description

In this Project, I have created a custom ERC-20 Token named "Degen", symbol "DGN", deployed the token on a Fuji C-CHAIN AVAX TestNet, and the Owner can mint the tokens to any address he/she wants, we have imported ERC20 & ERC20Burnable solidity files from OpenZepplin, to simplify the Transfer & Burning Process, the Address has been imported on the MetaMask and also tested for the Same, The Redeem functionalities are set such that there are 3 types of in-game assets the user could choose from(COMMON, RARE, UNIQUE), these are the 3 types of NFTs, and rates are set accordingly to redeem the tokens too.(Input Validation is checked too, via-Remix Editor).

## Getting Started

### Installing

* npm i
* npx hardhat, Configure the Javascript Project
* npm install --save-dev --save-exact hardhat@2.14.0

### Executing program

* In hardhat.config.js, set FORK_FUJI -> true; also add the private key of the account imported in the MetaMask at the place of account, and also add the testnet.snowtrace.io's Private API Key to track the transactions on the testnet
* npx hardhat run scripts/mint.js --network fuji
* On Remix IDE, Paste the Address of the above Deployed Contract
* Change the Environment to Injected
* Interact with the Functions through Remix, mint, transfer, burn
* Also import the Account into MetaMask using the Private key of any of the Accounts for the sake of testing
* Goto https://faucet.avax.network/ and type the address of the Account to receive 2 AVAX test tokens for the sake of testing
* Once the tokens have arrived, we are good to go
* Firstly, we will call the mint function to set the initial supply of the DGN tokens
* We can experiment with Transfering tokens to different addresses, you wil get the request to approve the transaction from the metamask, once we approve it, transaction will succed.
* Similarly we can try experimenting with the redeem function where based on the User's choice of NFT, the required number of tokens will get deducted from the Users wallet same could be checked directly via the Metamask and also by the balanceOf() function too.
* All these could also be verified at testnet.snowtrace.io by pasting the required contract address on which the token has been deployed(In my case: 0xAC94f9228c21F4ab10e4D25a72511Fd80A8a7b0e)

## Authors
Raj Siruvani - rajsiruvani@gmail.com
