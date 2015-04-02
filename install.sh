#!/bin/bash

echo -e "\n ********** vim-taeguk ********** \n"

echo "[*] checking ~/.vim existed..."
if [ -e ~/.vim ]
then
	echo "[!] existing ~/.vim founded!!"
	echo -n "Do you delete original .vim ?? (Y/N/B) >> "
	read sel
	if [ $sel = "Y" ] || [ $sel = "y" ]
	then
		:
	elif [ \( $sel = "B" -o $sel = "b" \) ] && [ ! -e ~/.vim_bckp ]
	then
		mv ~/.vim ~/.vim_bckp
	else
		echo "[*] task calcelled!"
		exit 1
	fi
	echo "[*] rm -rf ~/.vim"
	rm -rf ~/.vim
fi

echo "[*] checking ~/.vimrc existed..."
if [ -e ~/.vimrc ]
then
	echo "[!] existing ~/.vimrc founded!!"
	echo -n "Do you delete original .vimrc ?? (Y/N/B) >> "
	read sel
	if [ $sel = Y || $sel = "y" ]
	then
		:
	elif [ \( $sel = "B" -o $sel = "b" \) ] && [ ! -e ~/.vimrc_bckp ]
	then
		mv ~/.vimrc ~/.vimrc_bckp
	else
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
