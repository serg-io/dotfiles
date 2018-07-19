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

# Load nvm as described here: https://github.com/creationix/nvm#git-install
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source aliases, exports, and functions.
# Inspired by: https://askubuntu.com/a/195357
source $HOME/.files/aliases
source $HOME/.files/exports
source $HOME/.files/functions

PRIVATE="$HOME/.private"

# Source private aliases, exports, and functions if they exist.
if [[ -r "$PRIVATE/aliases" ]]; then
	source "$PRIVATE/aliases"
fi
if [[ -r "$PRIVATE/exports" ]]; then
	source "$PRIVATE/exports"
fi
if [[ -r "$PRIVATE/functions" ]]; then
	source "$PRIVATE/functions"
fi

# Add private bin directory to $PATH if it exist.
if [[ -d "$PRIVATE/bin" ]]; then
	export PATH="$PATH:$PRIVATE/bin"
fi