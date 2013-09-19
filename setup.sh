#/bin/bash

echo "This script replaces the current vim settings!"
git submodule init
git submodule update
rm -rf ~/.vimrc
rm -rf ~/.vim/
cp -R .vim ~/
cp -R .vimrc ~/
