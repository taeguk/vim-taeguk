#!/bin/bash

echo -e "\n-----vim-taeguk---follow-taeguk-----\n"

if [ -e "~/.vim" ]
then
	echo "[!] existing ~/.vim founded!!"
	echo -n "Do you delete original .vim ?? (Y/N) >> "
	read sel
	if [ sel != 'Y' && sel != 'y' ]
		echo "[*] task calcelled!"
		exit 1
	fi
	echo "[*] rm -rf ~/.vim"
	rm -rf ~/.vim
fi
if [ -e "~/.vimrc" ]
then
	echo "[!] existing ~/.vimrc founded!!"
	echo -n "Do you delete original .vimrc ?? (Y/N) >> "
	read sel
	if [ sel != 'Y' && sel != 'y' ]
		echo "[*] task calcelled!"
		exit 1
	fi
	echo "[*] rm -rf ~/.vimrc"
	rm -rf ~/.vimrc
fi

echo "[*] install start!"
rm -rf ~/.vim ~/.vimrc
cp -rf .vim .vimrc ~/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "[*] install finish!"

exit 0
