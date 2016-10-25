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

Plugin 'davidhalter/jedi-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nvie/vim-flake8'
Plugin 'majutsushi/tagbar'

Plugin 'hesselbom/vim-hsftp'

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


set t_Co=256

syntax enable
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set autowrite
set tildeop
set visualbell t_vb=
set modeline
set nohlsearch
set smartindent

set listchars=tab:>-,trail:-
set list

set smartcase

map  :bn
map  :bp

set tags=./tags;/
map <F8> :TagbarToggle
let g:tagbar_left = 1

set viminfo=

let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#1c1c1c ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#121212 ctermbg=233


" Find a file by searching up (or is that down?) towards /
function! UpFind(filename)
  let l:orig_wd = getcwd()
  let l:found_file = ""

  while getcwd() != "/"
    if filereadable( a:filename )
      let l:found_file = getcwd() . "/" . a:filename
      break
    else
      cd ..
    endif
  endwhile

  exec ":cd" fnameescape( l:orig_wd )

  return l:found_file
endfunction

" Use a local config file named 'vimrc', searching from the current directory
" upwards (downwards?)
function! SourceLocal()
  let l:local_rc_file = UpFind("vimrc")
  if l:local_rc_file != ""
    let l:source_cmd = "source " . l:local_rc_file
    :exec l:source_cmd
  endif
endfunction


au VimEnter * call SourceLocal()


hi Normal       guifg=LightGrey     guibg=Black         ctermfg=LightGrey
hi Comment      guifg=Black         guibg=Cyan          ctermfg=DarkCyan       ctermbg=Black
hi SpecialKey   ctermbg=13          guibg=LightRed
hi SignColumn   ctermbg=Black       guibg=Black

set laststatus=2

set noswapfile

highlight ColorColumn ctermbg=233 guibg=#222222
set colorcolumn=80

nnoremap ; :

ab lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

