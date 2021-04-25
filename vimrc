set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'rakr/vim-one'

call vundle#end()
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

set number
set relativenumber
set ruler
set incsearch
set wildmenu
set showcmd

let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
colorscheme one
set background=light
