#/bin/bash

echo "This script replaces the current vim settings!"
rm -rf ~/.vimrc
rm -rf ~/.vim/
cp -R .vim ~/
cp -R .vimrc ~/
