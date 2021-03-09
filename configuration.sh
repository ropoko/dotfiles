#!/bin/bash

sudo apt autoremove -y && apt clean;

# Installing GIT
sudo apt install git -y;

## Configuring GIT
git config --global user.name "ropoko";
git config --global user.email rodrigostramantinoli@gmail.com;
git config --global init.defaultBranch main;

# Installing ZSH
sudo apt install zsh -y && chsh -s $(which zsh);

sudo apt update -y && sudo apt upgrade -y &&

## Installing oh-my-zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh &&
sh install.sh;

# Installing ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0;
git clone https://github.com/asdf-vm/asdf.git ~/.asdf;
cd ~/.asdf;
git checkout "$(git describe --abbrev=0 --tags)";

# Adding plugins to ZSH
sudo apt install sed -y;

if grep -q "plugin=(git)"; then
    sed -i 's/plugin=(git)/plugins=(git sudo asdf virtualenv)/g' ~/.zshrc;
else
    echo "some plugins may have to be added manually"
fi

source ~/.zshrc;
