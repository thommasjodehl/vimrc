# My GVim configuration
When cloning this repo to a new machine, create symlinks to the vimrc file and the vimfiles folder.

# Symlink creation in Windows
mklink /prefix path_to_symlink_location path_to_original_file

Prefix: 

/H - creates a hard link to a file

/J - creates a hard link to a directory or folder

EXAMPLE: mklink /H C:\Users\<username>\_vimrc C:\<url to cloned repo\_vimrc

# Installing Vim enviroment on new machine
First clone this repo to the machine. Then create symlinks. After that go to the root of the cloned repo and issue the following commands:

git submodule init

git submodule update

# External tools for VIM
Even though Ack is included in the plugins, the used code searching tool is actually "The Silver Searcher" or Ag. This can be downloaded using Chocolatey on Windows or Cygwin.

# Upgrading a plugin bundle
Let us say that the ctrlp bundle needs to be updated:

cd cloned_repo/bundle/ctrlp.vim

git pull origin master

# Credits
The repo was created with help from the following guides:

http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

http://www.howtogeek.com/howto/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/

# List of included bundles (wip)
http://townk.github.io/vim-autoclose/
