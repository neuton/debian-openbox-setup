#!/bin/sh
echo &&
echo =========================== installing fglrx 14.9 ============================== &&
sudo apt-get install -y linux-headers-$(uname -r) build-essential &&
curl -o driver.zip 'http://www2.ati.com/drivers/linux/amd-catalyst-14-9-linux-x86-x86-64.zip' --referer 'http://support.amd.com/en-us/download/desktop?os=Linux+x86' &&
unzip driver.zip && rm driver.zip &&
sudo fglrx-14.301.1001/amd-driver-installer-14.301.1001-x86.x86_64.run &&
rm -rf fglrx-14.301.1001
