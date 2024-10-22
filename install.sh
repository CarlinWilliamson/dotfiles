#!/bin/sh

files="gitconfig inputrc bashrc bash_aliases vimrc config/i3 config/htop"

for file in $files; do
    target="$(pwd)/$file"
    link_name="$HOME/.$file"

    if [ $(echo "$file" | grep \/) ]
    then
        link_name="$(echo "$link_name" | sed -E "s/(.*)\/.*/\1/")"
    fi
        
    ln -s -i -v "$target" "$link_name"
done

. ~/.bashrc
