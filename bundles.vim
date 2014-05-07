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

Bundle 'jgdavey/tslime.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'mattn/webapi-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/wombat'
Bundle 'vim-scripts/wombat256.vim'

" Clojure
Bundle 'VimClojure'

" Javascript
Bundle 'pangloss/vim-javascript'

" Ruby
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'

Bundle 'altercation/vim-colors-solarized'
