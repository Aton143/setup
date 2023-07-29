set rtp+=D:/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-dispatch'

Plugin 'morhetz/gruvbox'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'yuki-yano/fzf-preview.vim'

Plugin 'jesseleite/vim-noh'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'vim-scripts/a.vim'

Plugin 'beyondmarc/hlsl.vim'
Plugin 'PeterRincker/vim-argumentative'

Plugin 'tommcdo/vim-exchange'

Plugin 'ludovicchabant/vim-gutentags'

call vundle#end()
filetype plugin indent on

set noerrorbells
set belloff=all

set background=dark " Setting dark mode
set guifont=Hack:h14

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

let g:gruvbox_italic="0"

autocmd vimenter * ++nested colorscheme gruvbox
syntax on
set rnu

set tabstop=2
set sw=2
set softtabstop=2
set expandtab

set scrolloff=5

set is hls
set hlsearch

set cindent

set ignorecase
set smartcase

set cinoptions=:0,l1,t0,g0,(0

let g:airline#extensions#whitespace#enabled = 0

command E Explore

set makeprg=build.bat

autocmd vimenter * !call cmd /c D:\prototype\misc\shell.bat

autocmd vimenter * :helptags D:/.vim/bundle/Vundle.vim

" error message formats
" Microsoft MSBuild
set errorformat+=\\\ %#%f(%l\\\,%c):\ %m
" Microsoft compiler: cl.exe
set errorformat+=\\\ %#%f(%l)\ :\ %#%t%[A-z]%#\ %m
" Microsoft HLSL compiler: fxc.exe
set errorformat+=\\\ %#%f(%l\\\,%c-%*[0-9]):\ %#%t%[A-z]%#\ %m

cnoreabbrev make Make
cnoreabbrev W w

autocmd VimResized * wincmd =
