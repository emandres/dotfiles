if has("win32")
  set guifont=Consolas:h10:cANSI

  if &lines < 60 || &columns < 160
    set lines=60 columns=160
  endif
endif

set visualbell t_vb=
