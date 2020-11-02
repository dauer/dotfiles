" make sure we are in full Vim mode
set nocompatible

" enable filetype specific plugins
filetype plugin indent on

set ts=4
set sw=4
" scrollof: number of lines to see above and below the cusor
set so=5
" comment out when editing Makefiles ...
set expandtab
set backspace=2
set ff=unix

colorscheme torte

" set line numbers
set nu
" search-as-you-type
set is
" case-insensitive
set ci
" highlight search
set hlsearch
" ignore case when searching
set ignorecase
" always show statusline
set laststatus=2
set ruler

syntax on

set ai "auto indent

" don't be such a bitch with hidden buffers
set hidden

" set wildmenu enables a menu at the bottom of the vim window (command line)
set wildmenu

set nobackup
set noswapfile

" allow cursor to move past lastcharacter
set virtualedit=all

" Tabs
" switching tabs on shift+tab
map <s-tab> :tabn<CR>
" new tab on ctrl+n
map <C-n> :tabe<CR>

" highligt trailing whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Pathogen
" https://github.com/tpope/vim-pathogenn
execute pathogen#infect()
call pathogen#infect()

" https://github.com/scrooloose/nerdtree
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
" Hidden files shown as default. Shift + i to toggle hidden files
let NERDTreeShowHidden=1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
