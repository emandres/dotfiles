set nocompatible
set encoding=utf-8

source ~/dotfiles/bundles.vim

syntax on

colorscheme solarized
set background=dark

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

set backspace=indent,eol,start

set number
set showcmd
set cursorline

" Change leader key to ,
let mapleader=','
noremap \ ,

" Search
set incsearch
nmap <leader>h :set hlsearch!<CR>

" List characters
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>

" stop polluting my directories with *.swp files!
if has("win32")
  set dir=~/vimfiles/tmp
  set backupdir=~/vimfiles/tmp
  set undodir=~/vimfiles/tmp
else
  set dir=~/.vim/tmp
  set backupdir=~/.vim/tmp
  set undodir=~/.vim/tmp
endif

" Persistent undo
set undofile

" No bells
set vb
set t_vb=

" Get rid of some default key bindings I don't care for
nmap K k
nmap Y y$

" CtrlP configuration
nmap <leader>, :CtrlP<CR>
nmap <leader>. :CtrlPBuffer<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|packages\|obj\|bin'

" vim-rails key bindings
nmap <leader>rc :Rcontroller 
nmap <leader>rm :Rmodel 
nmap <leader>rv :Rview 

" pretty-print JSON
function! FormatJSON()
  :%!python -m json.tool
endfunction
nmap <leader>fj :call FormatJSON()<CR>gg=G

