#!/bin/bash

sudo apt update -y
sudo apt list --upgradable
sudo apt upgrade -y

sudo dpkg --configure -a

# programs with apt

cd /home/$USER/Downloads

# qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo apt install qbittorrent -y

# vivaldi - download
wget -c https://downloads.vivaldi.com/stable/vivaldi-stable_3.6.2165.40-1_amd64.deb

# edge - download
wget -c https://go.microsoft.com/fwlink/?linkid=2124602

# krita
wget -c https://download.kde.org/stable/krita/4.4.2/krita-4.4.2-x86_64.appimage
sudo chmod u+x *.appimage

# steam
sudo apt install steam -y

# caffeine
sudo apt install caffeine -y

# font-manager
sudo apt install font-manager -y

# virtualbox
wget -c https://download.virtualbox.org/virtualbox/6.1.18/virtualbox-6.1_6.1.18-142142~Ubuntu~eoan_amd64.deb

# Installing all .deb files
sudo dpkg -i *.deb

cd ~/dotfiles
chmod +x ./configuration.sh