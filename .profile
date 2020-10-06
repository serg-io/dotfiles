#
# Environment variable definitions.
#
# When using zsh as a login shell, this file is sourced by ~/.zprofile. Zsh will also use this file
# when emulating sh or ksh. See zsh documentation (`man zsh`) for details.
#
# Bash will also load this file when used as a login shell but only if ~/.bash_profile and
# ~/.bash_login don't exist. See bash documentation (`man bash`) for details.
#
# Once these variables are loaded by a login shell, subsequent shells inherit variables defined
# here.
#

# Make vim the default editor.
export EDITOR="vim"

# Add ~/.local/bin to $PATH if it exists.
if [[ -d "$HOME/.local/bin" ]]; then
	export PATH="$PATH:$HOME/.local/bin"
fi

# Add ~/.files/bin to $PATH if it exists.
if [[ -d "$HOME/.files/bin" ]]; then
	export PATH="$PATH:$HOME/.files/bin"
fi

# Source private profile from ~/.private/.profile if the file exists.
if [[ -r "$HOME/.private/.profile" ]]; then
	source "$HOME/.private/.profile"
fi

# vim: filetype=sh
