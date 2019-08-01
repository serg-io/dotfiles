Private Dotfiles
================

Private dotfiles can be stored in this directory. Files stored in this directory are ignored by git
and will **not** be added to the repository, see _.gitignore_.

For instance, you can define **private** aliases by creating a script file, in this directory,
called _aliases_. The _aliases_ file is ignored by git and will not be added to the repository. If
it exists, the **private** _aliases_ file will be sourced by the **public** _$HOME/.files/aliases_
file. Similarly, **private** exports and functions can be defined by creating the files _exports_
and _functions_ in this directory.

Additionally, **private** executable files can be stored in a _bin_ directory. If it exists, the
private _bin_ directory is automatically added to the `$PATH` environment variable, see
_$HOME/.files/exports_.