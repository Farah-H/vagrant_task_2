#!/bin/bash

# Installs the 3.2.20 version of mongoDB and starts
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install nginx -y
# Installs the 3.2.20 version of mongoDB and starts
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20
sudo systemctl enable mongod.service --now

sudo cp -f mongod.conf /etc/mongod.conf
sudo systemctl restart mongodb

echo "export DB_HOST='192.168.33.20'" >> ~/.bashrc