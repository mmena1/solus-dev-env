#!/bin/sh
#cd ~/Downloads || "Directory Downloads does not exist... Exiting..." exit
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz
if [ $? != 0 ]; then
     echo "Error downloading jdk: $?"
    exit $?
    return
else
tar xf jdk-8u144-linux-x64.tar.gz
    mv jdk1.8.0_144 /opt
    ln -svf /opt/jdk1.8.0_144/bin/java /usr/bin/java
    rm -f jdk-8u144-linux-x64.tar.gz
    exit 0
   
fi
