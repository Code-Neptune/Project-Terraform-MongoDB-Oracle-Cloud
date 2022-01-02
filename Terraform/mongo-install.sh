#!/bin/bash
packagelink="https://objectstorage.ap-mumbai-1.oraclecloud.com/p/_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/o/mongo-cluster.zip"
sudo apt update
sudo apt upgrade -y
var_arch=$(dpkg --print-architecture) 
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=$var_arch] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker-ce -y
sudo apt install docker-compose -y
sudo adduser docker
sudo usermod -aG docker docker
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 27017 -j ACCEPT
sudo netfilter-persistent save
mkdir mongo-cluster
cd mongo-cluster
sudo apt install unzip
wget $packagelink
sudo unzip mongo-cluster.zip
sudo docker build -t mongo-replica-set .
sudo docker-compose up -d