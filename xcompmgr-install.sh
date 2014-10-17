#!/bin/sh
echo &&
echo =============================== setup xcompmgr ================================= &&
sudo apt-get install -y dh-autoreconf xutils-dev git &&
git clone http://anongit.freedesktop.org/git/xorg/app/xcompmgr.git &&
cd xcompmgr && sh autogen.sh && make && sudo make install &&
cd .. && rm -rf xcompmgr/
