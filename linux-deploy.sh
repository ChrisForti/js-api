#!/bin/bash

# This script deploys a node app on ubuntu.

if ( node -v )
then 
 echo "node is installed"
else
 echo "installing node"
 sudo apt update 
 sudo apt install -y nodejs
fi

if (npm -v)
then 
 echo "npm is installed"
else
 echo "installing npm"
 sudo apt install -y npm
fi

if (which express)
then 
 echo "express is installed"
else
 echo "installing express"
 npm i express
fi

if ( test -d node_modules )
then 
 echo "node_modules are installed"
else
 echo "installing node_modules"
 npm i node_modules
fi

echo "$(hostname -I)"
node app.js
