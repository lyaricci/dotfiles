#!/bin/bash

# Install Neovim
sudo apt install neovim
echo "Installing Neovim"

# Symlink lazynvim configs
ln -s ~/dotfiles/nvim ~/.config/
echo "Linking nvim files"
