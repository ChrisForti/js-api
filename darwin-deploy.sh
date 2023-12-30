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

<<<<<<< HEAD

if ( npm -v )
=======
<<<<<<< HEAD:deploy.sh
if ( npm -v )
=======
# https://github.com/nodesource/distributions#deb
# Npm should be installed

if (which npm)
>>>>>>> 40/gitignore
then 
 echo "npm is installed"
else
 echo "installing npm"
<<<<<<< HEAD
 sudo apt update 
 sudo apt install -y npm
 brew install npm
=======
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
>>>>>>> 40/gitignore
fi

if ( test -d node_modules )
then 
 echo "node_modules are installed"
else
 echo "installing node_modules"
 npm install
fi

<<<<<<< HEAD
echo "$(hostname -I)"
node app.js

=======
<<<<<<< HEAD:deploy.sh
echo "$(hostname -I)"
node app.js
=======
>>>>>>> 40/gitignore



# curl localhost:3000 
# node app.js
<<<<<<< HEAD
>>>>>>> 6ba5b2c (Added node feature to darwin deploy script.)
=======
>>>>>>> main:darwin-deploy.sh
>>>>>>> 40/gitignore
