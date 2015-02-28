#!/bin/sh

if [ ! -d "$HOME/.vim/bundle" ] ; then
  mkdir -p "$HOME/.vim/bundle"

  if type git; then
    git clone "https://github.com/Shougo/neobundle.vim" "$HOME/.vim/bundle/neobundle.vim"
  else
    echo 'Please install git or update your path to include the git executable!'
    exit 1;
  fi
fi


if [ ! -d "$HOME/.vim/dict" ] ; then
  mkdir -p "$HOME/.vim/dict"
  if type curl; then
    curl -L https://raw.github.com/tyru/dotfiles/master/dotfiles/.vim/dict/scala.dict -o "$HOME/.vim/dict/scala.dict"
  fi
fi

vim +NeoBundleCheck +qall
