set nocompatible
set number
set wmh=0

filetype off
filetype plugin on
filetype indent on

nnoremap <c-h> <c-w>h<c-w>
nnoremap <c-l> <c-w>l<c-w>
nnoremap <c-j> <c-w>j<c-w>
nnoremap <c-k> <c-w>k<c-w>
nnoremap <silent> <Leader>f :CtrlP<Enter>
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

call vundle#end()
filetype plugin indent on

let g:airline_theme='solarized'

set encoding=utf-8
set fileencoding=utf-8

syntax on
