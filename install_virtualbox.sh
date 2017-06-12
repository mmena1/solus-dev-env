#!/bin/sh
#cd ~/Downloads || "Directory Downloads does not exist... Exiting..." exit
#eopkg upgrade -y
#eopkg install gcc make autoconf binutils linux-lts-headers xorg-server-devel -y
wget http://download.virtualbox.org/virtualbox/5.1.22/VirtualBox-5.1.22-115126-Linux_amd64.run
eopkg it -c system.devel -y
eopkg it linux-lts-headers -y
sh VirtualBox-5.1.22-115126-Linux_amd64.run
rm -f VirtualBox-5.1.22-115126-Linux_amd64.run

exit 0
