" VimPlug
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim'
Plug 'frazrepo/vim-rainbow'
Plug 'neoclide/coc-yaml'
Plug 'hashivim/vim-terraform'
Plug 'tpop/vim-surround'
call plug#end()

syntax on
set laststatus=2
" Set custom colorscheme for lightline
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
colorscheme nord
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
set number
" indent when moving to the next line
set autoindent
" decrease update time of vim for language server
set updatetime=300
" Use <c space> to trigger autocompletion
inoremap <silent><expr> <c-space> coc#refresh()
" Decrease update time for vim to work properly with language server
" open NerdTree automatically when vim is opened
" autocmd vimenter * NERDTree
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let python_highlight_all = 1
let g:terraform_align=1

" better to use hjkl
nnoremap <Left> :echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
nnoremap <Up> :echo "No Up for you!"<CR>
nnoremap <Down> :echo "No Down for you!"<CR>

" Remap split window resizing
nnoremap <C-l> :vertical resize +3<CR>
nnoremap <C-h> :vertical resize -3<CR>
nnoremap <C-j> :resize +3<CR>
nnoremap <C-k> :resize -3<CR>
