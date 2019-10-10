set lines=34
set columns=100
if has('win32')
  set guifont=Sauce_Code_Powerline:h12:cANSI:qDRAFT
else
  set guifont=HasklugNerdFontComplete-Regular:h13
  set macligatures
endif
set guioptions=ai
set formatoptions=croql
set t_Co=256

set popt:paper:letter

set mouse=
set clipboard=unnamed

map <C-Insert> "*y
map <S-Delete> "*x
map <S-Insert> "*P

if has('gui_macvim')
  noremap <D-CR> :set fu!
endif

set shellpipe=2\>\&1\|\ tee

unmenu! *

