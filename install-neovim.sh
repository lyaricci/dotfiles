#!/bin/bash

# Install Neovim
sudo apt install neovim
echo "Installing Neovim"

# Install LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
rm -rf ~/.config/nvim/lua
echo "Installing LazyVim"

# Symlink lazynvim configs
ln -s ~/dotfiles/neovim/lua ~/.config/nvim/
echo "Linking nvim files"
