set nocompatible
set term=xterm-256color
if has('termguicolors')
        set termguicolors
endif

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
Plugin 'artanikin/vim-synthwave84'
call vundle#end()

syntax on
" filetype plugin indent on

nmap 0 ^

let mapleader = "\<Space>"
nnoremap <leader>so :source $MYVIMRC<cr>
nnoremap <leader>vr :sp $MYVIMRC<cr>
" nmap <leader>t :!bundle exec rails test<cr>
nnoremap <leader>t :!deno test --allow-all<cr>
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>
nnoremap <leader>pv :Vex<cr>

imap jk <esc>
imap kj <esc>

set ruler
set number
set relativenumber
set incsearch
set wildmenu
set showcmd
set scrolloff=10
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:rustfmt_autosave = 1

colorscheme synthwave84
set background=dark
