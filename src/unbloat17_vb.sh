#!/bin/sh
echo "Making Ubuntu great again..."
#this prepares the VM for Virtualbox Tools installation
sudo apt install linux-headers-$(uname -r) build-essential dkms
#and clean all the crapware we dont want
sudo apt-get remove --purge libreoffice*
sudo apt-get remove fonts-opensymbol libreoffice libreoffice-\* openoffice.org-dtd-officedocument1.0 python\*-uno uno-libs3-\* ure ure-dbg
sudo apt-get remove libreoffice-core
sudo apt purge ubuntu-web-launchers
sudo apt-get remove banshee
sudo apt-get remove rhythmbox
sudo apt-get remove --purge libreoffice-core
sudo apt-get purge gnome-games-common gbrainy && sudo apt-get autoremove
sudo apt-get purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy
sudo apt remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku 
sudo apt-get purge thunderbird*
sudo apt-get purge transmission-gtk
sudo apt-get purge transmission-cli transmission-common transmission-daemon
sudo apt-get purge transmission*
sudo apt-get remove cheese
sudo apt-get purge shotwell*
sudo apt-get autoremove && sudo apt-get clean all && sudo apt-get autoclean all
#lets get the VM updated shall we
sudo apt-get update
sudo apt-get upgrade -y
#all done
echo "OK!"
echo "now insert the VirtualBox GuestAdditions CD Image from the Devices menu and reboot."
