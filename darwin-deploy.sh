#!/bin/bash

# Node, and npm should be installed

# darwin script

if ( node -v )
then 
 echo "node is installed"
else
 echo "installing node"
 sudo apt update 
 sudo apt install -y nodejs
fi


if ( npm -v )
then 
 echo "npm is installed"
else
 echo "installing npm"
 sudo apt update 
 sudo apt install -y npm
 brew install npm
fi

if ( test -d node_modules )
then 
 echo "node_modules are installed"
else
 echo "installing node_modules"
 npm install
fi

echo "$(hostname -I)"
node app.js




# curl localhost:3000 
# node app.js
>>>>>>> 6ba5b2c (Added node feature to darwin deploy script.)
