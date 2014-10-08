#!/bin/sh
echo ============================== setup xcompmgr ================================== &&
apt-get install -y dh-autoreconf xutils-dev git &&
git clone http://anongit.freedesktop.org/git/xorg/app/xcompmgr.git &&
cd xcompmgr && sh autogen.sh && make && make install &&
cd .. && rm -rf xcompmgr/
