#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

if [ "$(uname)" = "Darwin" ]; then
	alias ls="ls -GF"
fi

alias rm="nocorrect rm"

if builtin command -v nvim > /dev/null; then
  alias vi="nvim"
fi

eval $(dircolors ~/.dircolors-solarized/dircolors.ansi-light)
