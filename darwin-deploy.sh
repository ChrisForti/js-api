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

<<<<<<< HEAD:deploy.sh
if ( npm -v )
=======
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

if (which node)
>>>>>>> main:darwin-deploy.sh
then 
 echo "npm is installed"
else
<<<<<<< HEAD:deploy.sh
 echo "installing npm"
 sudo apt update 
 sudo apt install -y npm
=======
  echo "installing node"
brew install node
>>>>>>> main:darwin-deploy.sh
fi

if ( test -d node_modules )
then 
 echo "node_modules are installed"
else
 echo "installing node_modules"
 npm install
fi

<<<<<<< HEAD:deploy.sh
echo "$(hostname -I)"
node app.js
=======



# curl localhost:3000 
# node app.js
>>>>>>> main:darwin-deploy.sh
