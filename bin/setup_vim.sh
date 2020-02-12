#!/bin/sh

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
[ -d ~/.cache ] || mkdir ~/.cache
sh /tmp/installer.sh ~/.cache/dein
