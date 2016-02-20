set nocompatible
filetype off

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
    !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()
filetype plugin indent on

set mouse=a

set splitbelow
set splitright
