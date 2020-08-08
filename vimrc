set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.vim/plugged')


Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'stephpy/vim-yaml'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'towolf/vim-helm'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter' 

call plug#end()
filetype plugin indent on

" Jedi vim disable popup docstring
autocmd FileType python setlocal completeopt-=preview

colorscheme delek
hi Search cterm=NONE ctermfg=green  ctermbg=yellow

set mouse=a
" set ignore case for searches
set ic
" set highlight search matches
set hls
set nu
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set smartindent

au filetype go inoremap <buffer> . .<C-x><C-o>


" Status line
set laststatus=2
set statusline+=%#LineNr#
set statusline+=\ %F

" haproxy syntax
au BufRead,BufNewFile haproxy* set ft=haproxy


let g:jedi#show_call_signatures = "0"
"function! s:DiffWithSaved()
"  let filetype=&ft
"  diffthis
"  vnew | r # | normal! 1Gdd
"  diffthis
"  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
"endfunction
"com! DiffSaved call s:DiffWithSaved()
