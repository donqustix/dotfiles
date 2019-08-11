set encoding=utf-8  " The encoding displayed.

" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
set smarttab

" Linebreak on 500 characters
set lbr
set tw=500
set wrap

" turn syntax highlighting on
syntax on
" turn line numbers on
set number
" highlight matching braces
set showmatch

" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch 
" Don't redraw while executing macros (good performance config)
set lazyredraw 
" For regular expressions turn magic on
set magic

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer'}
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'dylanaraps/wal.vim'

" Initialize plugin system
call plug#end()

let NERDTreeChDirMode=2
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_no_function_highlight = 1

colorscheme wal

