#!/bin/sh
echo &&
echo ============================= setup skype 4.3 ================================== &&
sudo dpkg --add-architecture i386 &&
#sleep 1 &&
sudo apt-get update &&
sudo apt-get upgrade -fy &&
wget http://download.skype.com/linux/skype-debian_4.3.0.37-1_i386.deb &&
sudo dpkg -i skype-debian_4.3.0.37-1_i386.deb &&
rm skype-debian_4.3.0.37-1_i386.deb
