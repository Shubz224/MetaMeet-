# EventChain

**EventChain** is a decentralized event management platform built on the Ethereum blockchain. It enables users to create, manage, and attend events using NFTs as proof of attendance. The platform is designed to ensure transparency, security, and the ability to store event-related metadata using decentralized storage (IPFS).

## Tech Stack

- **Frontend**: 
  - **React**: A JavaScript library for building user interfaces, used to create dynamic and responsive web pages.
  - **Tailwind CSS**: A utility-first CSS framework that helps in quickly building custom designs.
  
- **Blockchain**: 
  - **Solidity**: Used for writing smart contracts on the Ethereum blockchain.
  - **Ethers.js**: A library for interacting with the Ethereum blockchain from the frontend.
  - **IPFS (InterPlanetary File System)**: A decentralized storage system used to store event-related metadata, ensuring that data is tamper-proof and stored off-chain.

- **Development Tools**: 
  - **Hardhat**: A development environment for Ethereum software, used for testing, compiling, and deploying the smart contracts.
  - **MetaMask**: A browser extension for managing Ethereum wallets and interacting with decentralized applications (DApps).

## Flow of the Project

1. **Event Creation**:
   - Users can create events by providing event details such as name, description, location, and date.
   - The event metadata is stored on IPFS to ensure decentralized, permanent storage.
   - A smart contract is deployed on the Ethereum blockchain, and the event details are registered.

2. **Event Attendance**:
   - Attendees can sign up and get their NFT-based proof of attendance upon entering the event.
   - The event organizer verifies attendance via a QR code, which is scanned by the system.
   - Once validated, the attendee's NFT is issued as proof of attendance and stored in their wallet.

3. **Smart Contract Interaction**:
   - The smart contract manages the creation of events, attendance registration, and issuing of NFTs.
   - It ensures that only the creator of the event can modify the event details, and it securely stores attendance records.

## Problems Solved

- **Centralized Event Management**: Traditional event management systems are often centralized, which may lead to issues such as data privacy, fraud, or lack of transparency. EventChain solves this by leveraging blockchain technology for transparent event creation and attendance tracking.
  
- **Proof of Attendance**: EventChain eliminates the possibility of fake attendance through its NFT-based system, ensuring that each attendee receives a unique, verifiable NFT as proof of participation.

- **Data Storage**: Storing event data on centralized servers may lead to data tampering or loss. By using IPFS, EventChain ensures that all metadata is stored in a decentralized manner, making it tamper-proof.

## Features

- **Create Events**: Users can create events by entering details such as name, description, location, and date.
  
- **Decentralized Metadata Storage**: Event metadata such as descriptions, images, and other details are stored on IPFS for decentralization.

- **Proof of Attendance NFTs**: Attendees receive an NFT as proof of attendance upon event participation.

- **QR Code Scanning**: Event organizers can scan attendees' QR codes to verify their attendance and issue the proof-of-attendance NFT.

- **Smart Contract Interaction**: The smart contract handles event creation, attendance registration, and NFT issuance.

## Difficulties Faced

- **Blockchain Integration**: Integrating Solidity smart contracts with the frontend and ensuring smooth interaction with Ethereum wallets (e.g., MetaMask) was a challenge. We overcame this by using Ethers.js for contract interaction and ensuring the wallet was properly connected.
  
- **IPFS Storage**: Storing and retrieving event metadata on IPFS was new to the team. Initially, there were challenges related to ensuring the data was correctly uploaded and accessible from the frontend, but these were solved by learning more about how IPFS works.

- **Gas Fees**: Ethereum's gas fees posed challenges when interacting with smart contracts. To optimize, we focused on reducing the number of transactions required and using Hardhat for local testing before deploying to the main network.

## How to Run the Project Locally

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/EventChain.git
   cd EventChain
