#!/bin/bash

# Update
sudo apt update && sudo apt upgrade

# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "Installing Chrome"

# Install Nodejs
sudo apt install nodejs
echo "Installing Nodejs"

# Install npm
sudo apt install npm
echo "Installing npm"

# build-essential and libssl-dev to install nvm
sudo apt install build-essential checkinstall libssl-dev
echo "Installing build-essential and libssl-dev"

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
echo "Installing nvm"

# Update Nodejs to latest
nvm install --lts
echo "Updating Nodejs"

# Update npm to latest
npm install -g npm@latest
echo "Updating npm"

# Install snap
sudo apt install snapd -y
echo "Installing snap"

# Install fonts
ln -s ~/dotfiles/fonts ~/.local/share/fonts
echo "Installing fonts"

# Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
echo "Installing lazygit"
