set nocompatible               " be iMproved

" check if vundle is installed
if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

filetype off                   " required!

" Init vundle
set runtimepath+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle 'gmarik/vundle'

"***
" Usability
Bundle 'mileszs/ack.vim'
Bundle 'ervandew/supertab'
Bundle 'rson/vim-conque'
Bundle 'chrismetcalf/vim-taglist'
Bundle 'sjl/gundo.vim'

"***
" Git integration
Bundle 'git.zip'
Bundle 'tpope/vim-fugitive'

"***
" Navigation
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'scrooloose/nerdtree'
Bundle 'project.tar.gz'

"***
" Indentation
Bundle 'godlygeek/tabular'

"***
" Syntax
Bundle 'tpope/vim-markdown'
Bundle 'DoxyGen-Syntax'
Bundle 'greyblake/vim-preview'

"***
" Programming
" General
Bundle 'ctags.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'Townk/vim-autoclose'
Bundle 'scrooloose/syntastic'
Bundle 'kana/vim-textobj-user'
Bundle 'taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'ervandew/eclim'

" C/C++
"Bundle 'complete.vim'
Bundle 'c.vim'
Bundle 'cpp.vim'

" Lua
Bundle 'lua.vim'
Bundle 'luarefvim'
Bundle 'lua-support'

" Python
Bundle 'python.vim'
Bundle 'pythoncomplete'

" Ruby
Bundle 'depuracao/vim-rdoc'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'lucapette/vim-ruby-doc'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'MatchTag'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-bundler'

" Java


" Groovy
Bundle 'groovy.vim'

" LaTeX
Bundle 'jcf/vim-latex'

" CSS
Bundle 'css_color.vim'

"***
" Color schemes
Bundle 'altercation/vim-colors-solarized'
"Bundle 'Wombat'
"Bundle 'wombat256.vim'

filetype plugin indent on     " required
