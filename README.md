# Blockchain-HelloWorld
A Hello World example of Blockchain programming using React as Frontend and Solidity, Ganache as backend
==================================================================================
# ---------Setup node -------------
# install Nodejs

# Install truffle in node
npm install -g truffle

# ganache-cli is ethereum client for development (you can also install ganache gui)
npm install -g ganache-cli

# ---------setting up the backend with truffle -------------
1. Make directory
mkdir greeterApp
2. Move into folder
cd greeterApp
3. make a folder for your truffle framework and smartcontract
mkdir greeter
4. move into folder
cd greeter
5. Initialize new truffle
truffle init

# ------- create truffle contract -------------
1. goto inside greeterApp>greeter>contract>
2. create a file with name Greeter.sol and write code as given in page

# ------- deploy truffle contract -------------
1. goto inside greeterApp>greeter>migrations>
2. create a 1_initial_migration.js file and write code as given in page
3. update truffle.js or truffle-config.js as below code 
module.export = {
    networks: {
        development: {
            host: "127.0.0.1",     // Localhost (default: none)
            port: 8545,            // Standard Ethereum port (default: none)
            network_id: "*",       // Any network (default: none)
        },
    },
};

# ------- interact with ganache-cli in terminal -------------
1. run in terminal - ganache-cli, here you can find 10 accounts and there private key respectively and your ganache-cli wil be started running on localhost given ip
2. compile and migrate truffle with 0.4.13 version
truffle compile
truffle migrate

# migrate will return some block details like below example
  Transaction: XXXXXXXXXXXXXXXXXXXXXXXXXXX
  Contract created: XXXXXXXXXXXXXXXXXXXX
  Gas usage: 96189
  Block Number: 1
  Block Time: Tue Mar 09 2021 15:50:23 GMT+0530 (India Standard Time)
  
# it has create a genesis block with some Ethereum and gases (gases used like petrol for car to run car) 
3. enter truffle console to goto console
4. you can verify address using
Greeter.address #it should match with the Contract created value above
5. create a variable using let 
let contract = Greeter.at(Greeter.address)
6. call existing function
#set the value
Greeter.deployed().then(i=>i.setGreet("Hello world"))
#get the value
Greeter.deployed().then(i=>i.getGreet())

(learn Truffle command here :- https://www.trufflesuite.com/docs/truffle/reference/truffle-commands)
(learn solidity here :- https://docs.soliditylang.org/en/v0.8.2/)

# ------- connect contract with web3 node library and react app -------------
1. Install react using cmd
2. goto inside greeterApp>greeter> and create a new react app 
3. enter command to create new react app - create-react-app greeterui
4. goto folder greeterui and update package.json and add web3 dependency in file
"""""""
"dependencies": {
    "@testing-library/jest-dom": "^5.11.9",
    "@testing-library/react": "^11.2.5",
    "@testing-library/user-event": "^12.8.1",
    "react": "^17.0.1",
    "react-dom": "^17.0.1",
    "react-scripts": "4.0.3",
    "web-vitals": "^1.1.0",
    # "web3": "^0.19.0" #this line you have to write
  },
"""""""""'
4. create a file in src with name EthereumSetup.js
5. update App.js as given in page
(Remember to run setGreet (using Greeter.deployed().then(i=>i.setGreet("Hello world")) in console) before getGreet in app. you can also use setGreet(args) in react code)


