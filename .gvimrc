set lines=34
set columns=100
set guifont=Source\ Code\ Pro\ for\ Powerline\ 11,\ Source\ Code\ Pro\ for\ Powerline:h14
set guioptions=aiL
set formatoptions=croql
set t_Co=256

set popt:paper:letter

set mouse=

map <C-Insert> "*y
map <S-Delete> "*x
map <S-Insert> "*P

set shellpipe=2\>\&1\|\ tee

unmenu! *


hi Cursor       guifg=Red           guibg=Yellow gui=NONE
hi Comment      guifg=Black         guibg=Cyan
hi Constant     guifg=Magenta       guibg=Black
hi Special      guifg=Black         guibg=LightRed
hi Identifier   guifg=Cyan          guibg=Black
hi Statement    guifg=LightBlue     guibg=Black
hi PreProc      guifg=Red           guibg=Black
hi Type         guifg=LightGreen    guibg=Black
"hi Label        guifg=Yellow         guibg=Black
hi Ignore       guifg=LightGrey     guibg=Black
hi NonText      guifg=LightGrey     guibg=Black
hi Normal       guifg=LightGrey     guibg=Black
hi Error        guibg=Red           guifg=Black
"hi Todo         guifg=Blue          guibg=Yellow

hi SpecialKey   guibg=LightRed
hi SignColumn   guifg=LightGrey     guibg=Black
hi ColorColumn  guibg=Grey15
hi LineNr       guifg=Grey40


function! ToggleFullScreen()
    call system("wmctrl -i -r ".v:windowid." -b toggle,fullscreen")
    redraw
endfunction

nnoremap <F11> :call ToggleFullScreen()

