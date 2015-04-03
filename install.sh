#!/bin/bash
# hahaha
# https://github.com/taeguk/vim-taeguk.git

echo -e "\n ********** vim-taeguk ********** \n"

git_fail() {
	echo "
[!] git is not installed in system!
[!] git must be required to vim-taeguk!
[!] please install git before installing vim-taeguk
		"
}

echo "[*] checking if git is installed..."
hash git 1>&2 2>/dev/null || (git_fail ; exit 1) || exit 1

echo -e "\n[*] checking if ~/.vim exists..."
if [ -e ~/.vim ]
then
	echo "[!] existing ~/.vim founded!!"
	echo -n "Do you delete original .vim ?? (Y/N/B/U) >> "
	read sel
	if [ $sel = "Y" ] || [ $sel = "y" ]
	then
		echo "[*] rm -rf ~/.vim"
		rm -rf ~/.vim
		echo "[*] cp -rf .vim ~/"
		cp -rf .vim ~/
	elif [ \( $sel = "B" -o $sel = "b" \) ]
	then
		if [ -e ~/.vim_bckp ]; then
			echo "[!] ~/.vim_bckp exists!!"
			echo "[*] task calcelled!"
			exit 1
		fi
		echo "[*] mv ~/.vim ~/.vim_bckp"
		mv ~/.vim ~/.vim_bckp
		echo "[*] cp -rf .vim ~/"
		cp -rf .vim ~/
	elif [[ $sel = "U" || $sel = "u" ]]
	then
		hash rsync 1>&2 2>/dev/null
		if [ $? -ne 0 ]
		then
			echo "[!] Can run in Update mode!"
			echo "[*] task calcelled!"
			exit 1
		fi
		echo "[*] rsync -a .vim/ ~/.vim/"
		rsync -a .vim/ ~/.vim/
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
		echo "[*] cp -rf .vimrc ~/"
		cp -rf .vimrc ~/
	elif [ \( $sel = "B" -o $sel = "b" \) ]
	then
		if [ -e ~/.vimrc_bckp ]; then
			echo "[!] ~/.vimrc_bckp exists!!"
			echo "[*] task calcelled!"
			exit 1
		fi
		echo "[*] mv ~/.vimrc ~/.vimrc_bckp"
		mv ~/.vimrc ~/.vimrc_bckp
		echo "[*] cp -rf .vimrc ~/"
		cp -rf .vimrc ~/
	else
		echo "[*] task calcelled!"
		exit 1
	fi
fi

echo -e "\n[*] Plugin managing start!"
if [ ! -d ~/.vim/bundle/Vundle.vim ]
then
	echo "[*] Vundle.vim install...!"
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
echo "[*] Plugin clean start!"
vim +PluginClean! +qall
echo "[*] Plugin clean finish!"
echo "[*] Plugin install start!"
vim +PluginInstall +qall
echo "[*] Plugin install finish!"
echo "[*] Plugin managing finish!"

echo -e "\n[*] All progress was done!\n"

exit 0
