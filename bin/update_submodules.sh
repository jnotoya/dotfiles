#!/bin/sh

DOTDIR="$HOME/dotfiles"

cd $DOTDIR

git submodule update --init --recursive
