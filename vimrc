set encoding=utf-8
set nocompatible

if has("win32")
  let vimfiles='~/vimfiles'
  source ~/vimfiles/bundles.vim
else
  let vimfiles='~/.vim'
  source ~/.vim/bundles.vim
endif

syntax on
colorscheme solarized

set ts=2
set sts=2
set sw=2
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
set dir=~/vimfiles/tmp
set backupdir=~/vimfiles/tmp

" Persistent undo
set undofile
set undodir=~/vimfiles/tmp

" No bells
set vb
set t_vb=

" GVim settings
if has("win32")
	set gfn=Consolas:h10:cANSI

  " Something other than the ridiculous 80x25 default setting.
  " Uses an if statement so we don't resize the window when sourcing .vimrc
  " from inside of vim.
  if &lines < 60 || &columns < 160
    set lines=60 columns=160
  endif
endif

" Get rid of some unsavory default key bindings
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

function! FormatJSON()
  :%!python -m json.tool
endfunction
nmap <leader>fj :call FormatJSON()<CR>gg=G

