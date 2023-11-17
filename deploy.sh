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

# linux script

if (which node)
then 
 echo "node is installed"
else
 echo "installing node"
 apt install node
fi





# npm install

# curl localhost:3000 
# node app.js