#!/bin/sh
echo ========================== setup blender 2.72-RC1 ============================== &&
#apt-get install blender &&
wget https://download.blender.org/release/Blender2.72/blender-2.72-RC1-linux-glibc211-x86_64.tar.bz2 &&
tar -xjf blender-2.72-RC1-linux-glibc211-x86_64.tar.bz2 &&
rm blender-2.72-RC1-linux-glibc211-x86_64.tar.bz2 &&
mv blender-2.72-RC1-linux-glibc211-x86_64 /usr/local/blender-2.72-RC1 &&
ln -s /usr/local/blender-2.72-RC1/blender /usr/local/bin/blender
#should probably also install libSDL if problems with blender occur:
#http://www.blender.org/forum/viewtopic.php?t=25528&sid=84273591bccaf0568340913abd9814a6
#http://www.libsdl.org/release/

