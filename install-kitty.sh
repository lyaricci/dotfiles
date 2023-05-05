#!/bin/bash

# Install kitty terminal
sudo apt install kitty -y
echo "Installing kitty terminal"

# Symlink kitty configs
ln -s ~/dotfiles/kitty.conf ~./config/kitty/
echo "Linking kitty configs"
