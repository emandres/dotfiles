set nocompatible
filetype off

if has("win32")
  set rtp+=~/vimfiles/bundle/vundle/
  call vundle#rc('~/vimfiles/bundle')
else
  set rtp+=~/.vim/bundle/vundle
  call vundle#rc()
endif

Bundle 'gmarik/vundle'

filetype plugin indent on

Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

" Clojure
Bundle 'VimClojure'

" Javascript
Bundle 'pangloss/vim-javascript'

" Ruby
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'

Bundle 'pangloss/vim-javascript'

Bundle 'altercation/vim-colors-solarized'
