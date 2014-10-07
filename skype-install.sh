#!/bin/sh
echo ============================= setup skype 4.3 ================================== &&
dpkg --add-architecture i386 &&
apt-get update &&
apt-get upgrade -fy &&
wget http://download.skype.com/linux/skype-debian_4.3.0.37-1_i386.deb &&
dpkg -i skype-debian_4.3.0.37-1_i386.deb &&

