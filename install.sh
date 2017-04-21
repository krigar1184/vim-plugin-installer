#!/bin/bash
bundle_dir="$HOME/.vim/bundle"
plugins=( 
    "vim-syntastic/syntastic"
    "vim-airline/vim-airline"
    "airblade/vim-gitgutter"
    "majutsushi/tagbar"
    "mxw/vim-jsx"
    "pangloss/vim-javascript"
    "scrooloose/nerdtree"
    "Xuyuanp/nerdtree-git-plugin"
    "altercation/vim-colors-solarized"
    "godlygeek/tabular"
)

if [ ! -f "$HOME/.vimrc" ]; then
    cp .vimrc $HOME/.vimrc
fi

for plugin in "${plugins[@]}" 
do
    data=($(echo $plugin | tr '/' ' '))
    name=${data[1]}

    if [ ! -d "$bundle_dir/$name" ]; then
        echo "Installing $name..."
        git clone "https://github.com/$plugin" "$bundle_dir/$name"
    fi
done
