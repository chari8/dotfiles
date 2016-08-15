#!/bin/bash
echo "*****************************************\n" >> $PWD/log.txt 
date >> $PWD/log.txt
echo "remove old vim" >> $PWD/log.txt 
apt remove vim >> $PWD/log.txt
echo "install mercurial" >> $PWD/log.txt 
apt install mercurial >> $PWD/log.txt
echo "install ncurses-devel" >> $PWD/log.txt 
apt install ncurses-devel >> $PWD/log.txt
echo "install lua & luajit" >> $PWD/log.txt 
apt install lua >> $PWD/log.txt
apt install lua-devel >> $PWD/log.txt
apt install luajit >> $PWD/log.txt
echo "install python & python3" >> $PWD/log.txt 
apt install python >> $PWD/log.txt
apt install python3-devel >> $PWD/log.txt

echo "install vim" >> $PWD/log.txt 
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2 >> $PWD/log.txt
tar xjfC vim-7.4.tar.bz2 $PWD/src >> $PWD/log.txt
(cd src/vim74;
./configure \
--with-features=huge \
--enable-multibyte \
--enable-luainterp=dynamic \
--enable-gpm \
--enable-cscope \
--enable-fontset \
--enable-fail-if-missing \
--prefix=/usr/local;
make;
make install;) >> $PWD/log.txt

echo "set vimrc & dein" >> $PWD/log.txt 
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
