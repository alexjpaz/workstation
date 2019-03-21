" THIS IS AN AUTOGENERATED FILE

set nocompatible               " be iMproved
filetype off                   " required!

set bs=2
set ts=4
set sw=4

call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'

Plug 'puppetlabs/puppet-syntax-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'gcmt/taboo.vim'
Plug 'lepture/vim-velocity'
Plug 'groenewege/vim-less'
Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim'

Plug 'gorodinskiy/vim-coloresque'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Yaml
Plug 'avakhov/vim-yaml'

" Syntastic
" Plug 'scrooloose/syntastic'
" Plug 'vim-syntastic/syntastic'

" Lint
Plug 'w0rp/ale'

" Tags
Plug 'ludovicchabant/vim-gutentags'

" Javascript
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Quramy/tsuquyomi'

Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'einars/js-beautify'
Plug 'maksimr/vim-jsbeautify'
Plug 'chrisbra/Colorizer'
Plug 'kchmck/vim-coffee-script'
Plug 'juvenn/mustache.vim'
Plug 'jimmyhchan/dustjs.vim'

" Completion
"Plug 'Valloric/YouCompleteMe'

" SnipMate
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Go
Plug 'fatih/vim-go'

" Python
Plug 'vim-scripts/indentpython.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'nvie/vim-flake8'

" Other
Plug 'Valloric/ListToggle'

" Dracula
Plug 'dracula/vim'

" Test
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'

call plug#end()

runtime macros/matchit.vim

filetype plugin indent on

