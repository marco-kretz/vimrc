set nocompatible

" Defaults
syntax on
filetype plugin indent on
colorscheme Tomorrow-Night
set guifont=Hack:h12
set number
set colorcolumn=90
set hlsearch
set showmatch
set guioptions-=r
set guioptions-=L

" Speed up
set hidden
set history=100

" Tabs
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" Commands
autocmd BufWritePre * :%s/\s\+$//e

" Keybindings
let mapleader=","
map <leader>s :source ~/.vimrc<CR>
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
noremap <Leader>r :CommandTFlush<CR>

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'wincent/command-t'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()

" NERDTree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
