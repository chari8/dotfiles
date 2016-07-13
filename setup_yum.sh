#!/bin/bash
date >> $PWD/log.txt
yum install vim >> $PWD/log.txt
mkdir -p "$HOME/.vim/rc" >> $PWD/log.txt 
mkdir -p "$HOME/.vim/color" >> $PWD/log.txt 
mkdir -p "$HOME/.vim/undo" >> $PWD/log.txt 
echo "creating symbolic links\n" >> $PWD/log.txt 
ln -s -f "$PWD/.vimrc" "$HOME/.vim/vimrc" >> $PWD/log.txt  
ln -s -f "$PWD/dein.toml" "$HOME/.vim/rc/dein.toml" >> $PWD/log.txt 
ln -s -f "$PWD/dein_lazy.toml" "$HOME/.vim/rc/dein_lazy.toml" >> $PWD/log.txt 
ln -s -f "$PWD/.vimrc" "$HOME/.vim/vimrc" >> $PWD/log.txt
ln -s -f "$PWD/dein.toml" "$HOME/.vim/rc/dein.toml" >> $PWD/log.txt 
ln -s -f "$PWD/dein_lazy.toml" "$HOME/.vim/rc/dein_lazy.toml" >> $PWD/log.txt 
date >> $PWD/log.txt
echo "*****************************************\n" >> $PWD/log.txt 
