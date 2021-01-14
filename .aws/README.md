AWS Files
=========

The [AWS files](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) can be
stored in this directory. Files stored in this directory are ignored by git and will **not** be
added to the repository, see _.gitignore_.

Alternatively, AWS files can be stored in the private directory and
[symlinks](https://en.wikipedia.org/wiki/Symbolic_link) can be created in this directory. This will
allow you to keep all your private files in the _private_ directory. For instance, if your AWS
_config_ file is located at _$HOME/.private/aws/config_ you can create a symlink using the
following command:

	ln -s ~/.private/aws/config ~/.aws/config
