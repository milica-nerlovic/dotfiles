#!/bin/bash

files=( "tmux.conf" )

for file in "${files[@]}"
do
  if [ -e "$HOME/.${file}" ]; then
    echo "$file: Creating backup file $HOME/.${file}.backup"
    mv "$HOME/.${file}" "$HOME/.${file}.backup"
  fi

  echo "$file: Copying to $HOME/.${file}"
  cp "$file" "$HOME/.${file}"

  echo -e "$file: \033[32mDone.\033[0m\n"
done