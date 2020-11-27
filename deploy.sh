#!/bin/bash

ADDRESS="ubuntu@ec2-35-181-29-4.eu-west-3.compute.amazonaws.com"
PRODUCTION="prod"

#ssh connection
ssh -i ~/.ssh/selfserver.pem $ADDRESS

#deploy on prod server
git remote add deploy ssh://$ADDRESS/test
git push origin $PRODUCTION

#pull on dev server
#git pull deploy dev 

#git fetch --depth=1 git@github.com:kimzou/test.git refs/heads/*:refs/remotes/origin/*
#git checkout origin prod
#git merge dev
#git push origin prod

