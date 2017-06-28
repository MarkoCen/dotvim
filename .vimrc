let mapleader=";"

" setup options
set nocompatible
set t_Co=256
set shellpipe=>
set number
set wmh=0
set ignorecase
set smartcase
set hls
set encoding=utf-8
set fileencoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
" end setup options

filetype off

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
autocmd InsertEnter,InsertLeave * set cul!

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
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'vim-syntastic/syntastic'

Plugin 'digitaltoad/vim-pug'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'

Plugin 'Valloric/YouCompleteMe'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'Zenburn'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()

" begin setup airline
let g:airline_theme='badwolf'
" end setup airline

" setup syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" end setup syntastic

" setup snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" end setup snippets

filetype plugin indent on

colorscheme zenburn

syntax enable
syntax on

autocmd VimEnter * NERDTree
