# node and npm should be installed

if (which node)
then 
  echo "node is installed"
else
  echo "installing node"
curl -SLO https://deb.nodesource.com/nsolid_setup_deb.sh 
chmod 500 nsolid_setup_deb.sh
./nsolid_setup_deb.sh 21
apt-get install nodejs npm -y
fi



