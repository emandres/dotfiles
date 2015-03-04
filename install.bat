@echo off

echo source ~\dotfiles\vimrc > "%HOMEPATH%\_vimrc"
echo source ~\dotfiles\gvimrc > "%HOMEPATH%\_gvimrc"

set VIMPATH="%SYSTEMDRIVE%%HOMEPATH%\vimfiles"
mkdir "%VIMPATH%"
mkdir "%VIMPATH%\bundle"
mkdir "%VIMPATH%\tmp"

echo %VIMPATH%

rem xcopy vim\* "%VIMPATH%" /E

git clone https://github.com/gmarik/vundle.git "%VIMPATH%\bundle\vundle"

cd %VIMPATH%
vim -u "%SYSTEMDRIVE%%HOMEPATH%\dotfiles\bundles.vim" +BundleInstall +qall
