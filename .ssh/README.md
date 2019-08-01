SSH Files
=========

SSH files can be stored in this directory. Files stored in this directory are ignored by git
and will **not** be added to the repository, see _.gitignore_.

Alternatively, SSH files can be stored in the private directory and
[symlinks](https://en.wikipedia.org/wiki/Symbolic_link) can be created in this directory. This will
allow you to keep all your private files in the _private_ directory. For instance, if your SSH
_config_ file is located at _$HOME/.files/private/ssh/config_ you can create a symlink using the
following command:

	ln -s ~/.files/private/ssh/config ~/.ssh/config

Here are some useful lines that can be copied into the SSH _config_ file
([source](https://github.com/paulirish/dotfiles/blob/master/.ssh.config.example)):

	Host github.com
		ControlMaster auto
		ControlPersist 120
	
	Host *
		# Always use SSH2.
		Protocol 2
	
		# Use a shared channel for all sessions to the same host,
		# instead of always opening a new one. This leads to much
		# quicker connection times.
		ControlMaster auto
		ControlPath ~/.ssh/control/%r@%h:%p
		ControlPersist 1800
	
		# also this stuff
		Compression yes
		TCPKeepAlive yes
		ServerAliveInterval 20
		ServerAliveCountMax 10