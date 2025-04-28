#!/bin/bash
docker network create node-mongo-network || true
docker stop mongodb-container || true
docker rm mongodb-container || true
docker run -d -p 27017:27017 --name mongodb-container --network node-mongo-network mongo:6
docker stop nodejs-container || true
docker rm nodejs-container || true
docker pull nividaksha/nodejs:latest
docker run -d -p 80:3000 --name nodejs-container --network node-mongo-network --env-file /home/ubuntu/.env nividaksha/nodejs:latest
