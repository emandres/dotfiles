#! /bin/sh
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/gvimrc ~/.gvimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/dir_colors ~/.dir_colors

mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/tmp

cp -r vim/* ~/.vim

git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
vim -u bundles.vim +BundleInstall +qall
