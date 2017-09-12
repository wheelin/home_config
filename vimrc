set nocompatible
set title
set number
set ruler
set wrap
set hidden
set scrolloff=5
set ignorecase
set smartcase
set incsearch
set hlsearch

set noerrorbells

set backspace=indent,eol,start
syntax enable

set background=dark
colorscheme solarized
hi Normal guibg=NONE ctermbg=NONE

" change in normal keybindings
imap ii <Esc>
let mapleader = ","
" plugin manager system
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'https://github.com/ervandew/supertab'
Plug 'https://github.com/Shougo/neocomplete.vim'
call plug#end()

" syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" rust and racer configuration
let g:racer_cmd = "/usr/bin/racer"
let g:racer_experimental_completer = 1

" neocomplete configuration
" if patter matches, local omnifunc will be called
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.rust =
    \ '[^.[:digit:] *\t]\%(\.\|\::\)\%(\h\w*\)\?'
