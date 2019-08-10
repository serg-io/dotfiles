# Start X when logging in.
# https://wiki.archlinux.org/index.php/Xinit#Autostart_X_at_login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi
