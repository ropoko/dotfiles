#!/bin/bash

sudo apt update 
sudo apt upgrade 
sudo apt clean

# Installing GIT
sudo apt install git -y

## Configuring GIT
git config --global user.name "ropoko"
git config --global user.email rodrigostramantinoli@gmail.com
git config --global init.defaultBranch main

# Installing ZSH
sudo apt install zsh -y 
chsh -s $(which zsh)

sudo apt update -y 
sudo apt upgrade -y

cd ~

## Installing oh-my-zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

rm -rf ~/.zshrc
cp ~/dotfiles/.zshrc ~
 
source ~/.zshrc

# Installing ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

cd ~/.asdf

. $HOME/.asdf/asdf.sh

# ASDF - plugins
asdf plugin-add python
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add v

# ASDF install versions
asdf install nodejs 14.16.0
asdf install v 0.2.2

# ASDF set global versions
asdf global nodejs 14.16.0
asdf global v 0.2.2

# Configuring python 
sudo ~/dotfiles/update.sh
update-alternatives --install /usr/bin/python python /usr/bin/python3 1
sudo apt install python3.8-distutils -y

# Basic configuration for nano
rm -rf ~/.zshrc
cp ~/dotfiles/.zshrc ~/