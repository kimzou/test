#!/bin/bash


#ssh connection


#deploy on dev server
#git remote add deploy ssh://$ADDRESS/test
#git push deploy dev

#deploy on prod server
#git checkout prod
#git pull deploy 

git fetch --depth=1 git@github.com:kimzou/test.git refs/heads/*:refs/remotes/origin/*
git checkout origin prod
git merge dev
git push origin prod

