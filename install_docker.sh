#! /bin/bash

sudo yum update -y
sudo yum install git -y
sudo yum install docker -y
service docker start

git clone -b 0.56.0 https://github.com/saucelabs/the-internet.git
cd the-internet
docker build . -t the-internet
docker run -p 80:5000 the-internet
