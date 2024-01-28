# A script to build webserver

if (which brew)
then
echo "brew is installed"
else
echo "installing brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# monitor with htop

if (which htop)
then
echo "htop is installed"
else
echo "installing htop"
brew install htop
fi

# node as a java script runtime

if (which node)
then 
 echo "node is installed"
else
 echo "installing node"
brew install nodejs
fi

# install hypervisor

if (multipass version)
then
 echo "multipass is installed"
else
 echo "installing multipass"
 brew install multipass
fi

if [ -f ./id_ed25519 ]
then
  echo "ssh key already created"
else
  echo "Creating ssh key pair"
  ssh-keygen -t ed25519 -f "./id_ed25519" -N ''
fi

cat <<-EOF > ./cloud-init.yaml
#cloud-config

users:
  - default
  - name: ${USER}
    ssh_authorized_keys:
      - $(cat ./id_ed25519.pub)
    shell: /bin/bash
    sudo: ALL=(ALL) NOPASSWD:ALL
EOF

# Spinning up an ubuntu vm

if ( multipass info chrispi-api )
then 
  echo "chrispi-api vm is running"
else 
  echo "launching a ubuntu vm named chrispi-api"
  multipass launch --name chrispi-api --cloud-init cloud-init.yaml
fi

# Copy webserver.sh to vm
scp -i ./id_ed25519 -o StrictHostKeyChecking=no app.js package.json linux-deploy.sh $USER@$(multipass info chrispi-api | grep IPv4 | awk '{ print $2 }'):~/

# Install nginx on virtual machine
ssh -i ./id_ed25519 -o StrictHostKeyChecking=no  $USER@$(multipass info chrispi-api | grep IPv4 | awk '{ print $2 
}') 'bash linux-deploy.sh' 









