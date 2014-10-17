#!/bin/sh

echo &&
echo ============================== updating system ================================= &&
sudo apt-get update &&
sudo apt-get upgrade -y &&

echo &&
echo ========================== getting basic packages ============================== &&
sudo apt-get install -y xorg openbox slim tint2 volti conky nitrogen xcompmgr unzip curl xdotool lm-sensors git &&

echo &&
echo ============================== setup lm-sensors ================================ &&
sudo sensors-detect &&
sudo service kmod start &&

echo &&
echo ============================= basic desktop setup ============================== &&
cp gitconfig ~/.gitconfig &&
cp vimrc ~/.vimrc &&
cp xsession ~/.xsession &&
cp bashrc ~/.bashrc &&
mkdir ~/.config &&

# nitrogen setup
mkdir ~/.config/nitrogen &&
cp -r nitrogen/config/* ~/.config/nitrogen &&

# Openbox setup
sudo cp openbox/sudoers /etc/sudoers &&
mkdir ~/.config/openbox &&
cp -r openbox/config/* ~/.config/openbox/ &&
mkdir ~/.themes &&
cp -r openbox/themes/* ~/.themes/ &&

# conky setup
cp conky/conkyrc ~/.conkyrc &&

# tint2 setup
mkdir ~/.config/tint2 &&
cp tint2/config/tint2rc ~/.config/tint2/tint2rc &&
sudo cp tint2/debian-logo-128.png /usr/share/icons/debian-logo-128.png &&
sudo cp tint2/menu.desktop /usr/share/applications/menu.desktop &&

# SLiM setup
sudo cp -r slim/themes/* /usr/share/slim/themes/ &&
sudo cp slim/config/slim.conf /etc/slim.conf &&

echo &&
echo ========================= getting additional packages ========================== &&
sudo apt-get install -y lxpolkit lxappearance lxinput qt4-qtconfig gnome-icon-theme thunar terminator geany gmrun chromium libreoffice vlc gimp &&

echo &&
echo finished.
