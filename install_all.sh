#!/bin/sh
executeScript() {
    file=$1
    if [ ! -x ${file} ]; then
        echo "Setting execution privileges on file..."
        chmod 775 ${file}
        echo "File is now executable..."
    fi
    sh $1
    if [ $? != 0 ]; then
        echo "Error executing script $1"
        return
    fi
}

echo "########################"
echo "# Creating useful aliases :) #"
echo "########################"
alias ll='ls -alF'
alias ltr='ls -ltr'
alias l='ls -CF'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

echo "########################"
echo "# Installing Jdk 8u131 #"
echo "########################"
executeScript install_jdk.sh

echo "########################"
echo "# Installing VirtualBox #"
echo "########################"
executeScript install_virtualbox.sh

echo "########################"
echo "# Installing git #"
echo "########################"
eopkg it git -y

echo "########################"
echo "# Installing node #"
echo "########################"
eopkg it nodejs -y
npm i -g

echo "########################"
echo "# Installing chrome #"
echo "########################"
eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-stable/pspec.xml
eopkg it google-chrome-*.eopkg
rm -f google-chrome-*.eopkg

echo "########################"
echo "# Installing skype #"
echo "########################"
eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/skype/pspec.xml
eopkg it skype*.eopkg
rm -f *.eopkg

echo "########################"
echo "# Installing slack #"
echo "########################"
eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/slack-desktop/pspec.xml
eopkg it slack-desktop*.eopkg
rm -f slack-desktop*.eopkg

echo "########################"
echo "# Installing teamviewer #"
echo "########################"
eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/util/teamviewer/pspec.xml
eopkg it teamviewer*.eopkg
rm -f teamviewer*.eopkg
systemctl start teamviewerd.service

echo "########################"
echo "# Installing MS core fonts #"
echo "########################"
eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/desktop/font/mscorefonts/pspec.xml
eopkg it mscorefonts*.eopkg
rm -f mscorefonts*.eopkg

echo "########################"
echo "# Installing maven #"
echo "########################"
eopkg it maven -y

echo "########################"
echo "# Installing spotify #"
echo "########################"
eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/music/spotify/pspec.xml
eopkg it spotify*.eopkg
rm spotify*.eopkg

echo "########################"
echo "# Installing remmina #"
echo "########################"
eopkg it remmina -y

echo "########################"
echo "# Installing mysql #"
echo "########################"
eopkg it mariadb -y

echo "########################"
echo "# Installing dbeaver #"
echo "########################"
eopkg it dbeaver -y

echo "########################"
echo "# Installing vagrant #"
echo "########################"
eopkg it vagrant -y

echo "########################"
echo "# Installing docker #"
echo "########################"
eopkg it  docker docker-compose -y

echo "########################"
echo "# Installing gimp #"
echo "########################"
eopkg it gimp -y

echo "########################"
echo "# Installing webstorm #"
echo "########################"
eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/webstorm/pspec.xml
eopkg it webstorm*.eopkg
rm -f webstorm*.eopkg
