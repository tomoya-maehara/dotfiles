#!bin/bash

currentPath=$(cd $(dirname $0) && pwd)

# vim
ln -s $currentPath/.vimrc $HOME/.vimrc
if [ $? == 0 ]; then
  vundlePath=$HOME/.vim/bundle/Vundle.vim
  if [ ! -e $vundlePath ]; then
    git clone https://github.com/gmarik/Vundle.vim.git $vundlePath
  fi
  vim +PluginInstall +qall

  make -C ~/.vim/bundle/vimproc.vim
fi

# ctags
ln -s $currentPath/.ctags $HOME/.ctags

# tmux
ln -s $currentPath/.tmux.conf $HOME/.tmux.conf

# bash
ln -s $currentPath/.bashrc $HOME/.bashrc
ln -s $currentPath/.bash_profile $HOME/.bash_profile
