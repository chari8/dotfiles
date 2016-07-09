#!/bin/bash
apt install vim-nox
mkdir -p "$HOME/.vim/rc"
ln -s "$PWD/.vimrc" "$HOME/.vim/vimrc"  
ln -s "$PWD/dein.toml" "$HOME/.vim/rc/dein.toml"
ln -s "$PWD/dein_lazy.toml" "$HOME/.vim/rc/dein_lazy.toml"
