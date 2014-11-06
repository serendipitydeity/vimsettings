#!/bin/bash

is_url='(https)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'

if [ "$#" -ne 1 ] || [[ !($1 =~ $is_url) ]] ; then
  echo "Usage: $0 https://github.com/example/path"
else
  URL=$1
  BUNDLE_NAME=${URL##*/}

  git submodule add $URL .vim/bundle/$BUNDLE_NAME
fi
