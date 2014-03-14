@echo off

echo source ~\dotfiles\vimrc > %HOMEPATH%\_vimrc
echo source ~\dotfiles\gvimrc > %HOMEPATH%\_gvimrc

set VIMPATH=%HOMEPATH%\vimfiles
mkdir %VIMPATH%
mkdir %VIMPATH%\bundle
mkdir %VIMPATH%\tmp

xcopy vim\* %VIMPATH% /E

git clone https://github.com/gmarik/vundle.git %VIMPATH%/bundle/vundle
vim -u bundles.vim +BundleInstall +qall
