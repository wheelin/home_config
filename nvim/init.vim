set nocompatible
filetype indent on
set history=10000
syntax on
set showmatch
set showcmd
set cursorline
highlight CursorLine term=bold cterm=bold
set wildmenu
set incsearch
set hlsearch
set number
set numberwidth=4
set hidden
set tabstop=4
set softtabstop=2


if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif


call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'autozimu/LanguageClient-neovim', {
\ 'branch': 'next',
\ 'do': 'bash install.sh',
\ }

Plug 'junegunn/fzf'
Plug 'cohama/lexima.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
call plug#end()

" Nerdtree configuration
nmap <F6> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p

" Deoplete configuration
let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

" Rust configuration
let g:deoplete#sources#rust#racer_binary='$HOME/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:LanguageClient_serverCommands = {
\ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
\ }

" Lexima configuration
let g:lexima_enable_basic_rules = 1
let g:lexima_enable_newline_rules = 1
let g:lexima_enable_endwise_rules = 1

" SuperTab configuration
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabNoCompleteAfter = ['^', '\s', ']', '}', ',']
