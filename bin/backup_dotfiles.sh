#!/bin/sh

DOTDIR="$HOME/dotfiles"
ETCDIR="$DOTDIR/etc"
BACKUPDIR="$DOTDIR/backup"

[ -d "$BACKUPDIR" ] || mkdir "$BACKUPDIR"

for dfile in $(cat "$ETCDIR/dotfiles") ; do
  if [ -e "$HOME/$dfile" -a ! -h "$HOME/$dfile" ] ; then
    mv -b "$HOME/$dfile" "$BACKUPDIR/"
  fi
done
