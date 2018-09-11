#!/bin/sh

cd `dirname $0`

# make a symbolic link
for file in .??*
do
  [ "$file" = ".git" ] && continue
  ln -snfv "$(pwd)/$file" "$HOME/$file"
done
