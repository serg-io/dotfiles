#
# Zsh profile file.
#
# Zsh automatically loads this file when it's being used as a login shell. See zsh documentation
# (`man zsh`) for details.
#

# Load environment variables defined in ~/.profile.
source $HOME/.profile

# Start the SSH agent and X when logging in.
# https://wiki.archlinux.org/index.php/SSH_keys#ssh-agent_as_a_wrapper_program
# https://wiki.archlinux.org/index.php/Xinit#Autostart_X_at_login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec ssh-agent startx
fi

# vim: filetype=sh
