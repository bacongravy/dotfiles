#!/bin/bash

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  force=1;
fi

for file in {bash_profile,bashrc,tmux.conf,vimrc}; do
  source=.dotfiles/$file;
  destination=.$file;
  if [ -e "$destination" ] && [ -z "$force" ]; then
    echo "Skipping ~/.$file, file already exists. Use --force to override." 1>&2;
  else
    (cd ~; ln -f -s "$source" "$destination");
  fi;
done;

unset file
unset force
