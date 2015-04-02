#!/bin/bash

if [ -d ~/.vim ]
then
	mv ~/.vim ~/.vim_bckp
fi
if [ -f ~/.vimrc ]
then
	mv ~/.vimrc ~/.vimrc_bckp
fi

cp -rf .vim .vimrc ~/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

