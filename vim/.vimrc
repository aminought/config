set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'maciakl/vim-neatstatus'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'jvirtanen/vim-octave'
Plugin 'nvie/vim-flake8'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
Plugin 'rominf/tomita.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'dzeban/vim-log-syntax'
Plugin 'tomasr/molokai'
Plugin 'jaredly/vim-debug'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set omnifunc=syntaxcomplete#Complete

colorscheme molokai

set nu
syntax on

set clipboard=unnamedplus
set mouse=a

set tabstop=4
set shiftwidth=4
set smarttab

nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>

set splitbelow
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

autocmd BufWritePost *.py call Flake8() " Запуск flake при сохранении python файлов

set updatetime=250

map <C-n> :NERDTreeToggle<CR>
nmap <silent> <C-_> <Plug>(pydocstring)

" Закрытие vim, если остался только NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:ycm_python_binary_path = 'python'

set hlsearch
