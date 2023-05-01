#!/bin/bash

# UPDATE
sudo apt update && sudo apt upgrade

# INSTALA O CHROME
## vai fazer o download do .deb na pasta home
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

# INSTALA O VSCODE
## repositório do vscode
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt install code

# INSTALA O NODEJS
sudo apt install nodejs

# INSTALA O NPM
sudo apt install npm

# build-essential e libssl-dev packages pra instalar o nvm
sudo apt install build-essential checkinstall libssl-dev

# INSTALA O NVM PARA UPDATES DO NODEJS E NPM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# ATUALIZA O NODEJS PARA A ÚLTIMA VERSÃO
nvm install --lts

# ATUALIZA O NPM PARA A ÚLTIMA VERSÃO
npm install -g npm@latest

# INSTALA SNAP
sudo apt install snapd -y

# INSTALA O KITTY TERMINAL
sudo apt install kitty -y
