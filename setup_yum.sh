#!/bin/bash
echo "*****************************************\n" >> $PWD/log.txt 
date >> $PWD/log.txt
echo "remove old vim" >> $PWD/log.txt 
yum remove vim >> $PWD/log.txt
echo "install mercurial" >> $PWD/log.txt 
yum install mercurial >> $PWD/log.txt
echo "install ncurses-devel" >> $PWD/log.txt 
yum install ncurses-devel >> $PWD/log.txt
echo "install lua & luajit" >> $PWD/log.txt 
yum install lua >> $PWD/log.txt
yum install lua-devel >> $PWD/log.txt
yum install luajit >> $PWD/log.txt
echo "install python & python3" >> $PWD/log.txt 
yum install python >> $PWD/log.txt
yum install python3-devel >> $PWD/log.txt


echo "install vim" >> $PWD/log.txt 
mkdir "$PWD/src" >> $PWD/log.txt
(cd src;
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2;
tar xjf vim-7.4.tar.bz2;
cd vim74;
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
echo "creating symbolic links" >> $PWD/log.txt 
ln -s -f "$PWD/.vimrc" "$HOME/.vim/vimrc" >> $PWD/log.txt  
ln -s -f "$PWD/dein.toml" "$HOME/.vim/rc/dein.toml" >> $PWD/log.txt 
ln -s -f "$PWD/dein_lazy.toml" "$HOME/.vim/rc/dein_lazy.toml" >> $PWD/log.txt 
ln -s -f "$PWD/.vimrc" "$HOME/.vim/vimrc" >> $PWD/log.txt
ln -s -f "$PWD/dein.toml" "$HOME/.vim/rc/dein.toml" >> $PWD/log.txt 
ln -s -f "$PWD/dein_lazy.toml" "$HOME/.vim/rc/dein_lazy.toml" >> $PWD/log.txt 
date >> $PWD/log.txt
echo "*****************************************\n" >> $PWD/log.txt 
