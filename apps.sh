#!/bin/bash

sudo apt update -y && apt upgrade -y

# Installing snaps
sudo apt install snapd -y &&

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
sudo apt install -y apt-transport-https &&
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &&
sudo apt update -y &&
sudo apt install sublime-text -y;

# qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y &&
sudo apt install qbittorrent -y;

# vivaldi - download
wget -c https://downloads.vivaldi.com/stable/vivaldi-stable_3.6.2165.40-1_amd64.deb;

# edge - download
wget -c https://go.microsoft.com/fwlink/?linkid=2124602;

# krita
wget -c https://download.kde.org/stable/krita/4.4.2/krita-4.4.2-x86_64.appimage &&
sudo chmod u+x *.appimage;

# steam
sudo apt install steam -y;

# caffeine 
sudo apt install caffeine -y;

# font-manager
sudo apt install font-manager -y;

wget -c https://download.virtualbox.org/virtualbox/6.1.18/virtualbox-6.1_6.1.18-142142~Ubuntu~eoan_amd64.deb;

# Installing .deb files
sudo dpkg -i *.deb;

# Removing default apps 
sudo apt remove firefox -y;

sudo apt remove gedit -y;

# Configuration file
sudo chmod +x ./configuration.sh &&
./configuration.sh;
