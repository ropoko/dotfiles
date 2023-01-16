#! /bin/bash 

# it will be downloaded to home

cd $HOME/ & 

DISCORD_FOLDER="Discord"

if [ -d "$HOME/$DISCORD_FOLDER" ]
then
  rm -rf $DISCORD_FOLDER
fi

# download the tar.gz file
wget 'https://discord.com/api/download?platform=linux&format=tar.gz' -O discord.tar.gz

# the discord file is named with version -> like : discord.0.0.5
TAR_FILE="discord.tar.gz"

tar -xf "$TAR_FILE"

# remove .tar file
rm "$TAR_FILE"
