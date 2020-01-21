#!/bin/sh

DOTDIR="$HOME/.dotfiles"

if [ ! -d "$DOTDIR" ]; then
  echo "Installing dotfiles."
  git clone https://github.com/jnotoya/dotfiles.git "$DOTDIR"
fi

cd "$DOTDIR"
# sh bin/backup_dotfiles.sh
# sh bin/link_dotfiles.sh
sh bin/setup_vim.sh
echo "done."

