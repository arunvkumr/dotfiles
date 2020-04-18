#!/bin/bash

echo "Adding sublime and spotify to repo list."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update & sudo apt upgrade -y
sudo apt install -y apt-transport-https sublime-text sublime-merge python-dev python3-dev python-pip python3-pip build-essential libssl-dev libffi-dev python3-venv vim csh flex gfortran libgfortran3 g++ cmake xorg-dev patch zlib1g-dev libbz2-dev libboost-all-dev openssh-server libcairo2 libcairo2-dev libeigen3-dev lsb-core lsb-base net-tools network-manager git-core git-gui git-doc xclip vlc audacious libreoffice ubuntu-restricted-extras gnome-tweak-tool spotify-client xterm thunderbird htop jupyter-core software-properties-gtk

sudo apt autoremove
sudo apt autoclean


udisksctl mount -b /dev/nvme0n1p4
ln -s /media/arun/Data/ ~/media_Data
ln -s /media/arun/Data/Work/ ~/Wspace

# ssh-keygen -t rsa -b 4096 -C "arunvkumr@gmail.com"
# git config --global user.name "V Arun Kumar"
# git config --global user.email "arunvkumr@gmail.com"