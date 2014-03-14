#! /bin/sh
ln -s .dotfiles/vimrc ~/.vimrc
ln -s .dotfiels/gvimrc ~/.gvimrc

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/tmp

cp -r vim/* ~/.vim

git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
vim -u bundles.vim +BundleInstall +qall
