#!/bin/bash

#ssh connection


#deploy on dev server
#git remote add deploy ssh://$ADDRESS/test
git push deploy dev

#deploy on prod server
git checkout prod
git pull deploy 


