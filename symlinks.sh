#!/bin/bash

# ZSH
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
echo "Linkando arquivos ZSH"

# FONTS
ln -s ~/dotfiles/fonts ~/.local/share/fonts
echo "Instalando fontes"

# NEOVIM
sudo apt install neovim
echo "Instalando Neovim"

# LAZYNVIM
git clone https://github.com/LazyVim/starter ~/.config/nvim

# remove .git folder
rm -rf ~/.config/nvim/.git

# symlink lazynvim configs
ln -s ~/dotfiles/lazyvim-configs/lua ~/.config/nvim
