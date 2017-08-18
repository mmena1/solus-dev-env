#!/bin/sh
#cd ~/Downloads || "Directory Downloads does not exist... Exiting..." exit
#eopkg upgrade -y
#eopkg install gcc make autoconf binutils linux-lts-headers xorg-server-devel -y
wget http://download.virtualbox.org/virtualbox/5.1.26/VirtualBox-5.1.26-117224-Linux_amd64.run
eopkg it -c system.devel -y
eopkg it linux-lts-headers -y
sh VirtualBox-5.1.26-117224-Linux_amd64.run
rm -f VirtualBox-5.1.26-117224-Linux_amd64.run

exit 0
