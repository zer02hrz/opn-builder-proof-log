# OPN Builder Proof Log

OPN Builder Proof Log is a simple on-chain proof system for builders on OPN Chain. It allows builders to record milestones, technical progress, and shipped work directly on-chain.

## Overview

The project is designed around the idea of verifiable builder reputation. Instead of only saying that a builder has completed work, the builder can create milestone records on OPN Chain. Each record is stored through a smart contract transaction, making the progress transparent and verifiable.

This is a lightweight MVP created for OPN Builder’s Dashboard Season 1. The goal is to demonstrate a working smart contract deployment, contract interaction, and on-chain activity on OPN Testnet.

## Key Features

* Deployable smart contract on OPN Chain
* Builders can create milestone records
* Each milestone stores a title and description
* Milestone data is linked to the builder’s wallet address
* Emits an event when a new milestone is submitted
* Verifiable through OPN Testnet explorer

## OPN Chain Integration

The smart contract is deployed on OPN Testnet. Builder milestones are submitted through blockchain transactions, creating a simple proof log of builder activity.

## Network

OPN Testnet
Chain ID: 984
RPC: https://testnet-rpc.iopn.tech
Explorer: https://testnet.iopn.tech
Faucet: https://faucet.iopn.tech

## Contract

Contract Address: PASTE_CONTRACT_ADDRESS_HERE

## Example Milestones

* Deployed first smart contract on OPN Chain
* Completed OPN Builder Dashboard setup
* Tested contract interaction on OPN Testnet
* Submitted project for Season 1

## Roadmap

* Add a frontend interface
* Add wallet connection
* Add milestone history by wallet address
* Add builder profile integration
* Add badge-style milestone categories
* Expand into a lightweight reputation layer for OPN builders

## License

MIT
