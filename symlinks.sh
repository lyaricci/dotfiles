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
mkdir ~/.config/nvim
echo "Criando diretório NVIM"
ln -s ~/dotfiles/.config/init.vim ~/.config/nvim/init.vim
echo "Linkando Neovim"
