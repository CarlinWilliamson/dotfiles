#!/bin/bash


if [ $# -ne 0 ]; then
    cat << EOF
Creates symlinks as described in links.csv
Will prompt you if files already exist

Usage: $0
EOF
exit 1
fi

for link in $(tail -n +2 links.csv); do
    target="$(pwd)/$(echo $link | cut -d ',' -f1)"
    link_name="$HOME/$(echo $link | cut -d ',' -f2)"

    if [ -L $link_name ]; then
        if [ "$(readlink $link_name)" = $target ]; then
            echo "$target -> $link_name already exists"
            continue
        fi
    fi

    ln -s -i -v "$target" "$link_name"
done

. ~/.bashrc
