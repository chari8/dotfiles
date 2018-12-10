#!/bin/bash
VIMDIR="$HOME/.vim"
RCDIR="$HOME/.vim/rc"
UNDODIR="$HOME/.vim/undo"


if [ ! -d $VIMDIR ]; then
	mkdir $VIMDIR
fi

if [ ! -d $RCDIR ]; then
	mkdir $RCDIR
fi

if [ ! -d $UNDODIR ]; then
	mkdir $UNDODIR
fi

ln -is "$PWD/.vimrc" "$HOME/.vim/vimrc"  
ln -is "$PWD/dein.toml" "$HOME/.vim/rc/dein.toml"
ln -is "$PWD/dein_lazy.toml" "$HOME/.vim/rc/dein_lazy.toml"
