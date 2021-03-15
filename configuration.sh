#!/bin/bash

sudo apt update && sudo apt upgrade && sudo apt clean

# Installing GIT
sudo apt install git -y

## Configuring GIT
git config --global user.name "ropoko"
git config --global user.email rodrigostramantinoli@gmail.com
git config --global init.defaultBranch main

# Installing ZSH
sudo apt install zsh -y && chsh -s $(which zsh)

sudo apt update -y && sudo apt upgrade -y

## Installing oh-my-zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

source ~/.zshrc

# Installing ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

# ASDF - plugins
asdf plugin-add python
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add v

asdf global python 3.9.2
asdf global nodejs 14.16.0
asdf global v 0.2.2

# Configuring python
update-alternatives --install /usr/bin/python python /usr/bin/python3 1
sudo apt install python3.8-distutils -y

# Change icon cursor
echo "You need to select this icon with gnome-tweaks.."
cd ~/dotfiles && sudo cp -r icons/bibata_Ghost /usr/share/icons

# Install apps
cd ~/dotfiles && chmod +x .apps.sh
sudo ./apps.sh
