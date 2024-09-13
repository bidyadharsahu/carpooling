# carpooling is a decentralization blockchain project
# Steps/Commands to be used 
1. Install Nodejs with all its dependencies
2. npm config set strict-ssl false //for self-signed cert error
3. npm install -g truffle
4. mkdir carpooling-dapp
5. cd carpooling-dapp
6. truffle init
7. truffle compile //if you get any ganache error then install ganache globally by running "npm install -g ganache"
# 8. truffle develop  //THIS STEP IS IMPORTANT. IT IS NOT THERE IN CHATGPT TUTORIAL. Keep this terminal open. Don't close it
9. Change the port in truffle-config.js to ganache port --> 9545
10. truffle migrate --network development  //run it in a separate terminal. Deployment will happen here. You can run it multiple times to append multiple blocks
