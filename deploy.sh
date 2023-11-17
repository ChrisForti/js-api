#!/bin/bash

# Node should be installed

if (which node)
then 
 echo "node is installed"
else
 echo "installing node"
 brew install node
fi

# https://github.com/nodesource/distributions#deb


# Npm should be installed
# gets installed with brew install node



# npm install

# curl localhost:3000 
# node app.js