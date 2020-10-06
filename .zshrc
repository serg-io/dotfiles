# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory autocd beep extendedglob nomatch notify
# Enable vi mode.
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

# Add .zfunc directory to fpath.
# https://unix.stackexchange.com/a/33898
# http://zsh.sourceforge.net/Doc/Release/Functions.html#Autoloading-Functions
fpath=(
	$HOME/.zfunc
	$HOME/.zfunc/completions
	"${fpath[@]}"
)

autoload -U compinit
compinit
# End of lines added by compinstall

# Load interactive shell settings (aliases, function, etc).
source $HOME/.files/.shrc

# vim: filetype=sh