" Fuck Vi
set nocompatible

set backspace=indent,eol,start

syntax enable " enable syntax processing
syntax on
set background=light


set number
" turn relative line numbers on
set relativenumber
set rnu
set nowrap

" Tabs to spaces
set tabstop=2
set softtabstop=2
set expandtab

set lazyredraw

set showmatch  

set showcmd 


" Remaps
nnoremap j gj
nnoremap k gk
inoremap nn <esc>


" Have the line highlighted
function s:SetCursorLine()
  set cursorline
  hi cursorline cterm=none ctermbg=darkblue  ctermfg=white
endfunction
autocmd VimEnter * call s:SetCursorLine()

call plug#begin('~/.vim/plugged')
" Other plugins here.
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'elixir-editors/vim-elixir'
call plug#end()

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just anoying. Who likes them?
