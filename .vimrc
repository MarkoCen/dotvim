set nocompatible
set number
set wmh=0

filetype off
filetype plugin on
filetype indent on

nmap <c-h> <c-w>h<c-w>
nmap <c-l> <c-w>l<c-w>
nmap <c-j> <c-w>j<c-w>
nmap <c-k> <c-w>k<c-w>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
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
