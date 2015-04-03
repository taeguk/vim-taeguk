#!/bin/bash 

echo "[!] git is not installed!!"
echo "[*] git install in $HOME (local install)"

mkdir ~/src
cd ~/src

mkdir ~/opt

wget https://github.com/git/git/archive/v1.9.5.tar.gz
tar -xvzf v1.9.5.tar.gz
cd git-1.9.5

./configure --prefix=$HOME/opt
make install

~/opt/bin/git --version

hash git || (echo "[!] git install failed!"; exit 1)

echo "[*] git install finish"
exit 0
