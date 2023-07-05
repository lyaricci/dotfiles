#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade

# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "Installing Chrome"

# Install zsh
sudo apt install zsh -y
echo 'Installing zsh'

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Oh-my-zsh installed"

# Install autocomplete
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "Autocomplete installed"

# Install syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "Syntax highlighting installed"

# Link zsh dotfiles
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
echo "Zsh dotfiles linked"

# Install nodejs and npm
sudo apt install nodejs
sudo apt install npm
echo "Nodejs and npm installed"

# build-essential and libssl-dev to install nvm
sudo apt install build-essential checkinstall libssl-dev
echo "Installing build-essential and libssl-dev"

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
echo "Nvm installed"
echo "Exit terminal then run the following commands to update nodejs and npm"
echo "To update nodejs: nvm install --lts"
echo "To update npm: npm install -g npm@latest"
