#!/bin/bash

sudo apt-get update
curl -sSL https://get.docker.com/ | sudo sh
sudo usermod -a -G docker $USER
newgrp docker
docker swarm init
cd ~
git clone -b higherTimeout https://github.com/ericstoekl/faas/
cd ./faas
./deploy_stack.sh
cd ~
curl -sSL https://cli.openfaas.com | sudo sh
