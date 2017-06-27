let mapleader=";"

set nocompatible
set t_Co=256
set shellpipe=>
set number
set wmh=0
set ignorecase
set smartcase

filetype off
filetype plugin on
filetype indent on

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

command -nargs=1 FindInFiles :grep! -R "<args>" .

nnoremap <c-h> <c-w>h<c-w><esc>
nnoremap <c-l> <c-w>l<c-w><esc>
nnoremap <c-j> <c-w>j<c-w><esc>
nnoremap <c-k> <c-w>k<c-w><esc>
nnoremap <silent> <Leader>p :CtrlP ./<Enter>
nnoremap <Leader>f :FindInFiles 
nnoremap <silent> <Leader>n :NERDTree<Enter>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'Zenburn'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

let g:airline_theme='badwolf'

set encoding=utf-8
set fileencoding=utf-8

colorscheme zenburn

syntax enable
syntax on

autocmd VimEnter * NERDTree
