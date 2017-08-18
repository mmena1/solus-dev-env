#!/bin/sh
echo "########################"
echo "# Creating useful aliases :) #"
echo "########################"
cat << EOF >> ~/.bashrc
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
EOF
cat << EOF >> ~/.bash_aliases
alias ll='ls -alF'
alias ltr='ls -ltr'
alias l='ls -CF'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
EOF
source ~/.bash_aliases
