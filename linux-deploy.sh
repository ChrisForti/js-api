# node should be installed

if (which node)
then 
 echo "node is installed"
else
 echo "installing node"
 apt install node
fi

# npm should be installed

if (which npm))
then 
 echo "npm is installed"
else
 echo "installing npm"
sudo apt install npm
fi


