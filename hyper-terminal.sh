#!/bin/bash

# baixar os arquivos .deb antes de executar
## atualizar o script com as versões atuais dos .deb

# INSTALA O HYPER TERMINAL
sudo dpkg -i /home/lya/Downloads/hyper_3.4.1_amd64.deb

## instala temas e plugins do HYPER TERMINAL

hyper i hyper-aura-theme
hyper i hypercwd
hyper i hyperpower
hyper i hyper-tabs-enhanced



## hyper as default terminal
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /opt/Hyper/hyper 50
