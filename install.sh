#!/bin/bash
if [ ! -f "$HOME/.vimrc" ]; then
    cp .vimrc $HOME/.vimrc
fi

# install pathogen
if [ ! -d "$HOME/.vim/autoload" ]; then
    mkdir -p "$HOME/.vim/autoload" 
    curl -LSso "$HOME/.vim/autoload/pathogen.vim" "https://tpo.pe/pathogen.vim"
fi

if [ ! -d "$HOME/.vim/bundle" ]; then
    mkdir -p "$HOME/.vim/bundle"
fi

# install syntastic
if [ ! -d "$HOME/.vim/bundle/syntastic" ]; then
    echo "Installing syntastic..."
    git clone --depth=1 "https://github.com/vim-syntastic/syntastic.git" "$HOME/.vim/bundle/"
fi

# install airline
if [ ! -d "$HOME/.vim/bundle/vim-airline" ]; then
    echo "Installing airline..."
    git clone "https://github.com/vim-airline/vim-airline" "$HOME/.vim/bundle/"
fi

#install gitgutter
if [ ! -d "$HOME/.vim/bundle/vim-gitgutter" ]; then
    echo "Installing gitgutter..."
    git clone "https://github.com/airblade/vim-gitgutter" "$HOME/.vim/bundle/"
fi
