#!/bin/sh

echo ============================== updating system ================================= &&
apt-get update && apt-get upgrade -y &&

echo ========================== getting basic packages ============================== &&
apt-get install -y xorg openbox slim tint2 volti conky nitrogen halevt unzip curl xdotool lm-sensors &&

echo ============================== setup lm-sensors ================================ &&
sensors-detect &&
service kmod start &&

sh xcompmgr-install.sh &&

echo ============================= basic desktop setup ============================== &&

# nitrogen setup
mkdir ~/.config/nitrogen
cp -r nitrogen/config/* ~/.config/nitrogen &&

# Openbox setup
cp openbox/sudoers /etc/sudoers &&
mkdir ~/.config/openbox
mkdir ~/.themes
cp -r openbox/config/* ~/.config/openbox/ &&
cp -r openbox/themes/* ~/.themes/ &&

# conky setup
cp conky/conkyrc ~/.conkyrc &&

# tint2 setup
mkdir ~/.config/tint2
cp tint2/config/tint2rc ~/.config/tint2/tint2rc &&
cp tint2/debian-logo-128.png /usr/share/icons/debian-logo-128.png &&
cp tint2/menu.desktop /usr/share/applications/menu.desktop &&

# SLiM setup
cp -r slim/themes/* /usr/share/slim/themes/ &&
cp slim/config/slim.conf /etc/slim.conf &&

echo ========================= getting additional packages ========================== &&
apt-get install -y lxpolkit lxappearance lxinput thunar terminator geany gmrun chromium libreoffice vlc vim &&

#sh blender-install.sh &&
#sh skype-install.sh &&
sh fglrx-install.sh
