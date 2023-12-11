# chainlinkdavid
This is the repo for contracts used in this Chainlink Hackathon 2023

#Basic Concepts 
This project has the purpose of allow the NFT minting only if the user face recongnition works succesfully. Otherwise the NFT won't be minted.
#It uses ML and Face comparison API from RapidAPI
https://rapidapi.com/ai-engine-ai-engine-default/api/faceanalyzer-ai
#It uses functions , in order to read the info from this URL https://face-guardian.onrender.com/api/id     Subscription ID 1829 Network Sepolia
![image](https://github.com/davoweb3/chainlinkdavid/assets/105182325/3a889037-2e6d-4426-bdc8-566742755237)
#The face screening code is hosted on Render 
![image](https://github.com/davoweb3/chainlinkdavid/assets/105182325/179ab9e9-65ac-49df-b7b1-510a0621c67f)

#How to test ? 
Go to postman an call this API  , Postman collection is attached in hackathon devpost project
This is the endpoint https://face-guardian.onrender.com/compare-images

#It requieres 2 smart contracts ( all in Sepolia Network)
Fetcher ( Fuction) 0xDEC109458e6Bc0162D6D4Dd09D4F3Ac6E0c590aa  
Conditional Minting 0xD985B6447282bAEA53591DBFbd3606D01edf44e4

#Further instructions in the video attached 

