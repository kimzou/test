#!/bin/bash

#ADDRESS="ubuntu@ec2-35-181-29-4.eu-west-3.compute.amazonaws.com"
PRODUCTION="prod"

#ssh connection
#ssh -i ~/.ssh/selfserver.pem $ADDRESS

#eval "$(ssh-agent -s)" # Start ssh-agent cache
#chmod 600 .travis/selfserver.pem # Allow read access to the private key
#ssh-add .travis/selfserver.pem # Add the private key to SSH

echo "before remote added"
echo "SERVER_ADDRESS = $SERVER_ADDRESS"
echo "DIR = $DIR"
#git config --global push.default matching
#git remote add deploy ssh://$SEVER_ADDRESS/$DIR
git remote add deploy $SERVER_ADDRESS/$DIR
echo "After add remote & before pull"
git pull deploy dev
echo "After git pull"


#deploy on prod server
#git remote add deploy ssh://$ADDRESS/$DIR
#git push origin $PRODUCTION

#pull on dev server
#git pull deploy dev 

#git fetch --depth=1 git@github.com:kimzou/test.git refs/heads/*:refs/remotes/origin/*
#git checkout origin prod
#git merge dev
#git push origin prod

