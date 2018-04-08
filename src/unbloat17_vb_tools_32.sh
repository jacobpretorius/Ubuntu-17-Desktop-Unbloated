#!/bin/sh
echo "Making Ubuntu great again..."
#this prepares the VM for Virtualbox Tools installation
sudo apt install linux-headers-$(uname -r) build-essential dkms -y
#and clean all the crapware we dont want
sudo apt-get remove --purge libreoffice* -y
sudo apt-get remove fonts-opensymbol libreoffice libreoffice-\* openoffice.org-dtd-officedocument1.0 python\*-uno uno-libs3-\* ure ure-dbg -y
sudo apt-get remove libreoffice-core -y
sudo apt purge ubuntu-web-launchers -y
sudo apt-get remove banshee -y
sudo apt-get remove rhythmbox -y
sudo apt-get remove --purge libreoffice-core -y
sudo apt-get purge gnome-games-common -y
sudo apt-get purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy -y
sudo apt remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku -y
sudo apt-get purge thunderbird* -y
sudo apt-get purge transmission-gtk -y
sudo apt-get purge transmission-cli transmission-common transmission-daemon -y
sudo apt-get purge transmission* -y
sudo apt-get remove cheese -y
sudo apt-get purge shotwell* -y
sudo apt-get remove simple-scan -y
sudo apt-get autoremove -y
sudo apt-get clean all -y
sudo apt-get autoclean all -y
sudo apt-get install gnome-control-center -y
#lets get the VM updated shall we
sudo apt-get update
sudo apt-get upgrade -y
#install VS Code - our text editor of choice
sudo mkdir tmp
cd tmp
sudo wget -O VSCode.deb https://go.microsoft.com/fwlink/?LinkID=760680
sudo dpkg -i VSCode.deb
sudo apt-get install -f -y
cd ..
sudo rm -rf tmp
#all done
echo "Cleaned all OK and installed VS Code!"
echo "now insert the VirtualBox GuestAdditions CD Image from the Devices menu and reboot."
