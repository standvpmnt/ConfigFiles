set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'rakr/vim-one'
Plugin 'rizzatti/dash.vim'
Plugin 'rust-lang/rust.vim'
call vundle#end()

syntax enable
filetype plugin indent on

nmap 0 ^

let mapleader = "\<Space>"
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>t :!bundle exec rails test<cr>
nmap <leader>o o<esc>
nmap <leader>O O<esc>

imap jk <esc>
imap kj <esc>

set ruler
set number
set incsearch
set wildmenu
set showcmd

let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:rustfmt_autosave = 1

colorscheme one
set background=dark
