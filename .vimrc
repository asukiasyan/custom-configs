" Pathogen package manages is used with this vimrc file
execute pathogen#infect()
syntax on
colorscheme gruvbox
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Fix broken backspace button
set backspace=indent,eol,start
" Enable fast scrollin
set ttyfast
" Highlight search
set hlsearch
" ignore case when searching
set ignorecase
" show the matching part of the pair for [] {} and ()
set showmatch
" split window to the right by default
set splitright
" show relativenumbers
set relativenumber
" indent when moving to the next line while writinf code
set autoindent
" open NerdTree automatically when vim is opened
" autocmd vimenter * NERDTree
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let python_highlight_all = 1
let g:terraform_align=1
