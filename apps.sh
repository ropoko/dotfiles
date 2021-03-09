#!/bin/bash

# Installing snaps
sudo apt install snapd &&

sudo snap install cli-dictionary;
sudo snap install code --classic;
sudo snap install discord;
sudo snap install leagueoflegends --devmode --dangerous;
sudo snap install notion-snap;
sudo snap install review-tools;
sudo snap install spotify;
sudo snap install telegram-desktop;
sudo snap install strimio-desktop;

# programs with apt

cd /home/$USER/Downloads

# sublime - download and installation
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &&
sudo apt install apt-transport-https &&
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&
sudo apt update &&
sudo apt install sublime-text;

# qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable &&
sudo apt install qbittorrent;

# vivaldi - download
wget -c https://downloads.vivaldi.com/stable/vivaldi-stable_3.6.2165.40-1_amd64.deb;

# edge - download
wget -c https://go.microsoft.com/fwlink/?linkid=2124602;

# krita
wget -c https://download.kde.org/stable/krita/4.4.2/krita-4.4.2-x86_64.appimage &&
sudo chmod u+x *.appimage;

# steam
sudo apt install steam;

# caffeine 
sudo apt install caffeine;

# font-manager
sudo apt install font-manager;

# Installing .deb files
sudo dpkg -i *.deb;

# Removing apps 
sudo apt remove firefox;

sudo apt remove gedit;

# Configuration file
sudo chmod +x ./configuration.sh &&
./configuration.sh;
