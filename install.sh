#!bin/bash

currentPath=$(cd $(dirname $0) && pwd)

# vim
ln -s $currentPath/.vimrc $HOME/.vimrc

if [ $? != 0 ]; then
    echo '.vimrc already exists in your home directory'
    exit;
fi

# Install plugins
vundlePath=$HOME/.vim/bundle/Vundle.vim
if [ ! -e $vundlePath ]; then
    git clone https://github.com/gmarik/Vundle.vim.git $vundlePath
fi
vim +PluginInstall +qall

make -C ~/.vim/bundle/vimproc.vim

# ctags
ln -s $currentPath/.ctags $HOME/.ctags

if [ $? != 0 ]; then
    echo '.ctags already exists in your home directory'
    exit;
fi
