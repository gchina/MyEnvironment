" ---------------------------------------------------------
"  The Homer Vim Colorscheme
" ---------------------------------------------------------

" Homer is designed for dark backgrounds
set background=dark

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'homer'

" The ColourAssignment map and function to unpack it are from the bandit
" colorscheme by Al Bunden, available here:
" http://www.cgtk.co.uk/vim-scripts/bandit

let s:ColourAssignment = {}

" Unspecified colours default to NONE, EXCEPT cterm(.*) which default to matching gui(.*)
"
" In most cases, only GUIFG is therefore important unless support for Black and White
" terminals is essential

" Editor settings
" ---------------
let  s:ColourAssignment['Normal']        =  {'GUIFG':  'White',  'GUIBG':  'Black',  'CTERMBG':  'NONE',  'CTERMFG':  'NONE'}
let  s:ColourAssignment['Cursor']        =  {'GUI':    'Reverse'}
let  s:ColourAssignment['CursorLine']    =  {'GUI':    'NONE',      'GUIBG':  'Black'}
let  s:ColourAssignment['LineNr']        =  {'GUIFG':  'DarkGray',  'CTERMFG': 'DarkGray'}
let  s:ColourAssignment['CursorLineNr']  =  {'GUIFG':  'White'}


" Number column
" -------------
let  s:ColourAssignment['CursorColumn']  =  {'GUIBG':  'DarkGrey'}
let  s:ColourAssignment['Folded']        =  {'GUIFG':  'Cyan',      'GUIBG':  'DarkGrey'}
let  s:ColourAssignment['FoldColumn']    =  {'GUIBG':   '#202020',  'CTERMBG':  'Black'}
highlight! link SignColumn FoldColumn


" Window/Tab delimiters
" ---------------------
let  s:ColourAssignment['VertSplit']    =  {'GUIFG':  'DarkGray',     'GUIBG':  'Black'}
let  s:ColourAssignment['ColorColumn']  =  {'GUIBG':  '#202020', 'CTERMBG':   'DarkGray'}


"" File Navigation / Searching
"" ---------------------------
"let  s:ColourAssignment['Directory']  =  {'GUIFG':  'Blue',     'CTERMFG':  'Blue',    'GUI':      'Bold'}
"let  s:ColourAssignment['Search']     =  {'GUIFG':  'Black',    'GUIBG':    'Yellow',  'CTERMFG':  'Yellow',  'CTERMBG':  'Black',  'GUI':  'Bold',  'CTERM':  'Reverse,Bold'}
"let  s:ColourAssignment['IncSearch']  =  {'GUI':    'Reverse'}
"
"
"" Prompt/Status
"" -------------
"let  s:ColourAssignment['StatusLine']    =  {'GUIFG':  'White',  'GUIBG':    'Black',    'GUI':  'Bold,Reverse',  'CTERMFG':  'White',  'CTERMBG':  'NONE'}
"let  s:ColourAssignment['StatusLineNC']  =  {'GUIFG':  'White',  'GUIBG':    'Black',    'GUI':  'Reverse',       'CTERMFG':  'White',  'CTERMBG':  'NONE'}
"let  s:ColourAssignment['WildMenu']      =  {'GUIFG':  'White',  'GUIBG':    'DarkGrey',  'GUI':  'Bold'}
"let  s:ColourAssignment['Question']      =  {'GUIFG':  'Blue',   'CTERMFG':  'Blue'}
"let  s:ColourAssignment['Title']         =  {'GUI':    'Bold'}
"let  s:ColourAssignment['ModeMsg']       =  {'GUI':    'Bold'}
"let  s:ColourAssignment['MoreMsg']       =  {'GUIFG':  'Green',  'CTERMFG':  'Green'}
"
"
"" Visual aid
"" ----------
"let  s:ColourAssignment['MatchParen']  =  {'GUIBG':  'Cyan',      'CTERMBG':  'Cyan'}
"let  s:ColourAssignment['Visual']      =  {'GUIBG':  'DarkGrey'}
"highlight! link VisualNOS Visual
"let  s:ColourAssignment['NonText']     =  {'GUIFG':  'Blue',      'CTERMFG':  'Blue'}
"
"let  s:ColourAssignment['Todo']        =  {'GUIFG':  'Black',     'GUIBG':    'Yellow',  'CTERMBG':  'Yellow'}
"let  s:ColourAssignment['Underlined']  =  {'GUIFG':  'Cyan',      'CTERMFG':  'Cyan',    'GUI':      'Underline'}
"let  s:ColourAssignment['Error']       =  {'GUIFG':  'Red',       'GUIBG':    'Black',   'CTERMFG':  'Red',        'GUI':  'Reverse,Bold'}
"let  s:ColourAssignment['ErrorMsg']    =  {'GUIFG':  'Red',       'GUIBG':    'White',   'CTERMFG':  'Red',        'GUI':  'Reverse,Bold'}
"let  s:ColourAssignment['WarningMsg']  =  {'GUIFG':  'Red',       'CTERMFG':  'Red'}
"let  s:ColourAssignment['Ignore']      =  {'GUIFG':  'bg',        'CTERMFG':  'Black'}
"let  s:ColourAssignment['SpecialKey']  =  {'GUIFG':  'Cyan',      'CTERMFG':  'Cyan'}


" Variable types
" --------------
let  s:ColourAssignment['Constant']    =  {'GUIFG':  'Magenta',  'CTERMFG':  'Magenta'}
let  s:ColourAssignment['Number']      =  {'GUIFG':  'Yellow',      'CTERMFG':  'Yellow'}
highlight! link String Constant
highlight! link Boolean Number
highlight! link Float Number

let  s:ColourAssignment['Identifier']  =  {'GUIFG':  'Green',    'CTERMFG':  'Green',    'GUI':  'Bold'}
let  s:ColourAssignment['Function']  =  {'GUIFG':  'Cyan',    'CTERMFG':  'Cyan'}
"gsc highlight! link Function Identifier


" Comments
" --------
let  s:ColourAssignment['Comment']  =  {'GUIBG':  'DarkCyan',  'GUIFG': 'Black',  'CTERMBG':  'Cyan',  'CTERMFG':  'Black'}
highlight! link SpecialComment Special


" Language constructs
" -------------------
let  s:ColourAssignment['Statement']  =  {'GUIFG':  'DarkCyan',  'CTERMFG':  'Blue'}
highlight! link Conditional Statement
highlight! link Repeat Statement
highlight! link Label Statement
highlight! link Operator Statement
highlight! link Keyword Statement
highlight! link Exception Statement

let  s:ColourAssignment['Special']    =  {'GUIFG':  'Red',     'CTERMFG':  'Red'}
highlight! link SpecialChar Special
highlight! link Tag Special
highlight! link Delimiter Special
highlight! link Debug Special


" C like
" ------
let  s:ColourAssignment['PreProc']    =  {'GUIFG':  'Red',     'CTERMFG':  'DarkRed'}
highlight! link Include PreProc
highlight! link Define PreProc
highlight! link Macro PreProc
highlight! link PreCondit PreProc

let  s:ColourAssignment['Type']       =  {'GUIFG':  'Green',    'CTERMFG':  'Green'}
let  s:ColourAssignment['Structure']  =  {'GUIFG':  'Magenta',  'CTERMFG':  'Magenta'}
highlight! link StorageClass Type
highlight! link Typedef Type


" Diff
" ----
let  s:ColourAssignment['DiffAdd']     =  {'GUIFG':  'DarkGreen',  'GUIBG':  'Black',  'CTERMFG':  'Green',  'GUI':  'Reverse'}
let  s:ColourAssignment['DiffChange']  =  {'GUIFG':  'NONE'}
let  s:ColourAssignment['DiffDelete']  =  {'GUIFG':  'DarkRed',    'GUIBG':  'Black',  'CTERMFG':  'Red',    'GUI':  'Reverse'}
let  s:ColourAssignment['DiffText']    =  {'GUIFG':  'Yellow', 'GUIBG':  'Black',  'CTERMFG':  'Yellow', 'GUI':  'Reverse'}


" Completion menu
" ---------------
let  s:ColourAssignment['Pmenu']       =  {'GUIFG':  'Black',     'GUIBG':  'Grey'}
let  s:ColourAssignment['PmenuSel']    =  {'GUIFG':  'Yellow',    'GUIBG':  'DarkGrey',  'GUI':  'Bold',  'CTERMFG':  'Yellow'}
let  s:ColourAssignment['PmenuThumb']  =  {'GUIBG':  'DarkGrey'}
highlight! link PmenuSbar Pmenu


" Spelling
" --------
let  s:ColourAssignment['SpellBad']    =  {'GUIFG':  'NONE',  'GUISP':  'Red',     'CTERMFG':  'Red',     'GUI':  'undercurl'}
let  s:ColourAssignment['SpellCap']    =  {'GUIFG':  'NONE',  'GUISP':  'Blue',    'CTERMFG':  'Blue',    'GUI':  'undercurl'}
let  s:ColourAssignment['SpellLocal']  =  {'GUIFG':  'NONE',  'GUISP':  'Yellow',  'CTERMFG':  'Yellow',  'GUI':  'undercurl'}
let  s:ColourAssignment['SpellRare']   =  {'GUIFG':  'NONE',  'GUISP':  'Green',   'CTERMFG':  'Green',   'GUI':  'undercurl'}


" Text Formatting
" ---------------
let  s:ColourAssignment['Italic']      =  {'GUIFG':  'White',  'GUI':  'Italic'}
let  s:ColourAssignment['Bold']        =  {'GUIFG':  'White',  'GUI':  'Bold'}
let  s:ColourAssignment['BoldItalic']  =  {'GUIFG':  'White',  'GUI':  'Italic,Bold'}
highlight! link htmlItalic Italic
highlight! link htmlBold Bold
highlight! link htmlBoldItalic BoldItalic


" Function to translate the ColourAssignments to highlight lines
let s:colours = {}
let s:valid_cterm_colours =
        \ [
        \  'Black',      'DarkBlue',     'DarkGreen',  'DarkCyan',
        \  'DarkRed',    'DarkMagenta',  'Brown',      'DarkYellow',
        \  'LightGray',  'LightGrey',    'Gray',       'Grey',
        \  'DarkGray',   'DarkGrey',     'Blue',       'LightBlue',
        \  'Green',      'LightGreen',   'Cyan',       'LightCyan',
        \  'Red',        'LightRed',     'Magenta',    'LightMagenta',
        \  'Yellow',     'LightYellow',  'White',
        \ ]

for s:key in keys(s:ColourAssignment)
    let s:colours = s:ColourAssignment[s:key]
    if has_key(s:colours, 'TERM')
        let s:term = s:colours['TERM']
    else
        let s:term = 'NONE'
    endif
    if has_key(s:colours, 'GUI')
        let s:gui = s:colours['GUI']
    else
        let s:gui = 'NONE'
    endif
    if has_key(s:colours, 'GUIFG')
        let s:guifg = s:colours['GUIFG']
    else
        let s:guifg = 'NONE'
    endif
    if has_key(s:colours, 'GUIBG')
        let s:guibg = s:colours['GUIBG']
    else
        let s:guibg = 'NONE'
    endif
    if has_key(s:colours, 'CTERM')
        let s:cterm = s:colours['CTERM']
    else
        let s:cterm = s:gui
    endif
    if has_key(s:colours, 'CTERMFG')
        let s:ctermfg = s:colours['CTERMFG']
    else
        if index(s:valid_cterm_colours, s:guifg) != -1
            let s:ctermfg = s:guifg
        else
            let s:ctermfg = 'NONE'
        endif
    endif
    if has_key(s:colours, 'CTERMBG')
        let s:ctermbg = s:colours['CTERMBG']
    else
        if index(s:valid_cterm_colours, s:guibg) != -1
            let s:ctermbg = s:guibg
        else
            let s:ctermbg = 'NONE'
        endif
    endif
    if has_key(s:colours, 'GUISP')
        let s:guisp = s:colours['GUISP']
    else
        let s:guisp = 'NONE'
    endif

    if s:key =~# '^\k*$'
        execute 'highlight '.s:key.' term='.s:term.' cterm='.s:cterm.' gui='.s:gui.' ctermfg='.s:ctermfg.' guifg='.s:guifg.' ctermbg='.s:ctermbg.' guibg='.s:guibg.' guisp='.s:guisp
    endif
endfor
