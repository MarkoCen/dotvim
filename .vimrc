set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'zeis/vim-kolor'
Plugin 'digitaltoad/vim-pug'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on

colorscheme kolor

syntax on
