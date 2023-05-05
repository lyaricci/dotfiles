#!/bin/bash

# Install zsh
sudo apt install zsh -y
echo 'Installing zsh'

# Set zsh as default shell (logoff to work)
chsh -s $(which zsh)
echo "Setting zsh as default shell"

# Symlink
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
echo 'Linking zsh files'

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing oh-my-zsh"

# Install autocomplete
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "Installing autocomplete"

# Install syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "Installing syntax highlighting"
