set nocompatible               " be iMproved
 filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Tab stuff
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Make colors brighter
set background=dark

" Tab completion
set wildmode=longest,list,full
set wildmenu

" autotomplete braces

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
                                             
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
Bundle "pangloss/vim-javascript"

" Pathogen
execute pathogen#infect()


filetype plugin indent on     " required!

" Turn on line numbers
set number

" EXplicitly tell synastic checker which checker to use
let g:syntastic_javascript_checkers=['jslint']
let g:syntastic_javascript_jslint_conf="--white"

" For case insensitive searching
set smartcase
