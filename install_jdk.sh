#!/bin/sh
#cd ~/Downloads || "Directory Downloads does not exist... Exiting..." exit
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
if [ $? != 0 ]; then
    tar xf jdk-8u131-linux-x64.tar.gz
    mv jdk1.8.0_131 /opt/
    ln -svf /opt/jdk1.8.0_121/bin/java /usr/bin/java
    rm -f jdk-8u131-linux-x64.tar.gz
    exit 0
else
    echo "Error downloading jdk: $?"
    exit $?
    return
fi
