#!/bin/bash
# hahaha
# https://github.com/taeguk/vim-taeguk.git

echo -e "\n ********** vim-taeguk ********** \n"

echo "[*] checking if ~/.vim exists..."
if [ -e ~/.vim ]
then
	echo "[!] existing ~/.vim founded!!"
	echo -n "Do you delete original .vim ?? (Y/N/B) >> "
	read sel
	if [ $sel = "Y" ] || [ $sel = "y" ]
	then
		echo "[*] rm -rf ~/.vim"
		rm -rf ~/.vim
	elif [ \( $sel = "B" -o $sel = "b" \) ]
	then
		if [ -e ~/.vim_bckp ]; then
			echo "[!] ~/.vim_bckp exists!!"
			echo "[*] task calcelled!"
			exit 1
		fi
		echo "[*] mv ~/.vim ~/.vim_bckp"
		mv ~/.vim ~/.vim_bckp
	else
		echo "[*] task calcelled!"
		exit 1
	fi
fi

echo -e "\n[*] checking if ~/.vimrc exists..."
if [ -e ~/.vimrc ]
then
	echo "[!] existing ~/.vimrc founded!!"
	echo -n "Do you delete original .vimrc ?? (Y/N/B) >> "
	read sel
	if [ $sel = "Y" ] || [ $sel = "y" ]
	then
		echo "[*] rm -rf ~/.vimrc"
		rm -rf ~/.vimrc
	elif [ \( $sel = "B" -o $sel = "b" \) ]
	then
		if [ -e ~/.vimrc_bckp ]; then
			echo "[!] ~/.vimrc_bckp exists!!"
			echo "[*] task calcelled!"
			exit 1
		fi
		echo "[*] mv ~/.vimrc ~/.vimrc_bckp"
		mv ~/.vimrc ~/.vimrc_bckp
	else
		echo "[*] task calcelled!"
		exit 1
	fi
fi

echo -e "\n[*] install start!"
rm -rf ~/.vim ~/.vimrc
cp -rf .vim .vimrc ~/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "[*] install finish!"

exit 0
