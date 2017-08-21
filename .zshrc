# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Source aliases, exports, and functions.
# Inspired by: https://askubuntu.com/a/195357
source $HOME/.files/aliases
source $HOME/.files/exports
source $HOME/.files/functions