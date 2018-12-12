set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin ‘vim-syntastic/syntastic’
Plugin ‘cmugpi/vim-c0’
Plugin ‘vim-airline/vim-airline’

call vundle#end()

filetype plugin indent on

set ruler
set number
set showcmd
set audoindent
set incsearch
set hlsearch
syntax on
