
" Plugins

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-airline/vim-airline-themes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" General

syntax on
autocmd vimenter * ++nested colorscheme gruvbox
"let g:airline_theme='gruvbox'

set background=dark

set termguicolors
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nohlsearch
set hidden
set signcolumn=yes


" Mapping
let mapleader = " " 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
nmap <F6> :NERDTreeToggle<CR>
nmap <F2> :UndotreeToggle<CR>

nnoremap <Leader>ps :Rg<SPACE>
