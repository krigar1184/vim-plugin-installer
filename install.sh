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
    "tpope/vim-surround"
    "tpope/vim-repeat"
    "MarSoft/nerdtree-grep-plugin"
    "python-mode/python-mode"
    "Rykka/doctest.vim"
    "jistr/vim-nerdtree-tabs"
    "Lokaltog/powerline"
)

if [ -f "$HOME/.vimrc" ]; then
    read -p "Replace the existing .vimrc? (n|Y)" -n 1
    case $REPLY in
        Y) cp vimrc $HOME/.vimrc;;
        n) ;;
    esac
else
    cp vimrc $HOME/.vimrc
fi

for plugin in "${plugins[@]}" 
do
    data=($(echo $plugin | tr '/' ' '))
    name=${data[1]}

    if [ ! -d "$bundle_dir/$name" ]; then
        echo "Installing $name..."
        git clone "https://github.com/$plugin" "$bundle_dir/$name"
    else
        echo "Upgrading $name..."
        cd "$bundle_dir/$name" && git pull --rebase origin master &1>/dev/null
    fi
done

echo "Complete."
