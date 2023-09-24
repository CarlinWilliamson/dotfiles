#!/bin/sh



files="gitconfig inputrc bashrc config/i3 config/htop"

for file in $files; do
    target="$(pwd)/$file"
    link_name="$HOME/.$file"
    
    if [ -L $link_name ]
    then
        echo $link_name is already symlinked
	continue
    fi

    if [ $(echo "$file" | grep \/) ]
    then
        link_name="$(echo "$link_name" | sed -E "s/(.*)\/.*/\1/")"
    fi

    ln -s -i -v "$target" "$link_name"
        
done

. ~/.bashrc




sudo apt install i3blocks thunar pluma yad arandr jq git pdftk-java net-tools gimp vlc vim htop xournal guvcview flameshot
