#!/bin/bash
###############
# .make.sh
# This script creates symlinks from the home directory to dotfiles in ~/dotfiles
###############

dir=~/dotfiles
olddir=~/dotfiles_old
files=".bashrc .vimrc .hyper.js"

echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

echo -n "Changing to $dir directory ..."
cd $dir
echo "done"

for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/$file ~/$olddir/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done
