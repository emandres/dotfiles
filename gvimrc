if has("win32")
  set guifont=Powerline_Consolas:h10:cANSI

  if &lines < 60 || &columns < 160
    set lines=60 columns=160
  endif
endif

set visualbell t_vb=

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
