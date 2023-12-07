#!/bin/bash

# Node, and npm should be installed

# darwin script

if (which node)
then 
 echo "node is installed"
else
 echo "installing node"
 brew install node
fi

# https://github.com/nodesource/distributions#deb
# Npm should be installed

if (which npm)
then 
 echo "npm is installed"
else
 echo "installing npm"
 brew install npm
fi

# Express should be installed

if (which express)
then 
 echo "express is installed"
else
  echo "installing express"
npm install express
fi





# curl localhost:3000 
# node app.js
