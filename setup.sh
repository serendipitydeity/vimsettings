#/bin/bash

echo "This script replaces the current vim settings!"
CURRENT_DIR=$PWD
BASE_DIR=$(dirname $0)

cd $BASE_DIR
git submodule init
git submodule update
rm -rf ~/.vimrc
rm -rf ~/.vim/
cp -R .vim ~/
cp -R .vimrc ~/

cd $CURRENT_DIR
