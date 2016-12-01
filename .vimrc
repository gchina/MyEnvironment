" vim: expandtab tabstop=2 shiftwidth=2

set nocompatible              " be iMproved, required
filetype off                  " required

" first install Vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-airline/vim-airline'
Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-fugitive'
Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'mhinz/vim-signify'

Plugin 'majutsushi/tagbar'

Plugin 'davidhalter/jedi-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nvie/vim-flake8'
Plugin 'alfredodeza/pytest.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline_powerline_fonts = 1
let g:airline_theme = 'dark'
let g:airline_section_x=""
let g:airline_section_y="%{airline#util#prepend(airline#extensions#tagbar#currenttag(),0)}%{airline#util#wrap(airline#parts#filetype(),0)}"

let g:signify_vcs_list = [ 'perforce', 'hg', 'git' ]
let g:signify_sign_change = '~'
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=Green
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=Red
highlight DiffChange        cterm=bold ctermbg=none ctermfg=Yellow
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


set t_Co=256

syntax enable
set expandtab
set number
set autowrite
set tildeop
set visualbell t_vb=
set modeline
set nohlsearch
set smartindent
set smartcase

if v:version >= 704
  set formatoptions=tcqj
else
  set formatoptions=tcq
endif
set listchars=tab:>-,trail:-
set list

" disable macro and ex modes
nnoremap q <Nop>
nnoremap Q <Nop>

nnoremap  :bn
nnoremap  :bp

set tags=./tags;/
nnoremap <F8> :TagbarToggle
let g:tagbar_left = 1

set viminfo=

let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#3a3a3a ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#262626 ctermbg=235


" Source a local config file named 'vimrc', searching from the current
" directory upwards
function! SourceLocal()
  let l:local_rc_file = findfile("vimrc", ";")
  if l:local_rc_file != ""
    let l:source_cmd = "source " . l:local_rc_file
    :exec l:source_cmd
  endif
endfunction

au VimEnter * call SourceLocal()


hi Normal       guifg=LightGrey  guibg=Black     ctermfg=LightGrey
hi Comment      ctermfg=Black    ctermbg=Cyan    guifg=Black        guibg=Cyan
hi SpecialKey   ctermbg=13       guibg=LightRed
hi SignColumn   ctermbg=Black    guibg=Black

set laststatus=2

set noswapfile

highlight ColorColumn ctermbg=235
set colorcolumn=80

nnoremap ; :

ab lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

function! QFixToggle()
  if exists("g:qfix_win")
    cclose
    unlet g:qfix_win
  else
    copen
    let g:qfix_win = bufnr("$")
  endif
endfunction

let mapleader=','
nnoremap <Leader><Leader> :call QFixToggle()
noremap <Leader>n :cn
noremap <Leader>p :cp

" The Silver Searcher
if executable('ag')
  set grepprg=ag\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
  nnoremap \ :grep! "\b<C-R><C-W>\b":cw
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
endif

autocmd VimEnter * IndentGuidesEnable

