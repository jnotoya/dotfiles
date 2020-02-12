#!/bin/sh

DOTDIR="$HOME/dotfiles"
ETCDIR="$DOTDIR/etc"

cd "$HOME"

for dfile in $(cat "$ETCDIR/dotfiles") ; do
  ln -s "$DOTDIR/files/$dfile" .
done
