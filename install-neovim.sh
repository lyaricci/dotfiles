#!/bin/bash

# Install Neovim
sudo apt install neovim
echo "Installing Neovim"

# Symlink lazynvim configs
ln -s ~/dotfiles/neovim/lua ~/.config/nvim/
echo "Linking nvim files"
