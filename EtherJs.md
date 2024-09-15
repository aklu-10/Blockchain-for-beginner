# Basic Etherjs Documentation 

## Table of content 

- What is ether.js
- Provider
- Signer
- Contract
- Infura
- Connect with blockchain 
- Metamask
- Web3js Vs Etherjs

## Etherjs

- A complete and compact library for interacting with the Ethereum blockchain
and its ecosystem.

- Act as a bridge.


[Computer] ---- Etherjs ---- [Blockchain]<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(to interact)

## Provider
- In simple terms, it is used to get read access in blockhain

- A provider is a class which provides an abstraction for a connection to the Ethereum network. It provides read only access to the blochchain and its status

## Signer
- In simple terms. it is used to get write access in blockchain.

- A signer is a class which is directly or indirectly has a access to a private key, which can sign messages and transactions to authorize the network to change account ether to perform operations.

## Contract 

- In simple terms, used to interact with the deployed contract.

- A contract is a abstraction whhich represents a connection to a specific contract on the Ethereum network, so that application can use it like a normal js object.

## Installation

    npm i ethers


## Infura
- Infura se humara system node ban skta h bina koi client software ke like GETH in ethereum.

<i>Blockchain mai ane ke liye node banna padega</i>

<i>infura.io - create account and get key with url</i>


## Getting the name of the token using name function of contract - 

```
 useEffect(()=>{

    (async ()=>{

        const provider = new ethers.JsonRpcProvider('https://sepolia.infura.io/v3/10d1f313ef4e41a8bb9a5e16edcfada0');

        const contractAbi = [
        'function name() view returns (string)'
        ]; 
        
        const contract = new ethers.Contract('0x5589BB8228C07c4e15558875fAf2B859f678d129', contractAbi , provider);

        console.log(await contract.name())

    })();

 }, []);
```
