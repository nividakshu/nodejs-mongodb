#!/bin/bash
docker build -t "nividaksha/nodejs:latest" .
echo "Nivetha@1234" | docker login -u "nividaksha" --password-stdin
docker push "nividaksha/nodejs:latest"
