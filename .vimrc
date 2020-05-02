" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

let mapleader = ','

" absolute width of netrw window
let g:netrw_winsize = -28

" tree-view
let g:netrw_liststyle = 3

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" open file in a new tab
let g:netrw_browse_split = 3

Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', {
	\ 'do': 'npm install',
	\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'html'] }
" Plug 'ryanoasis/vim-devicons'
Plug 'franbach/miramare'

" You will load your plugin here
" Make sure you use single quotes
" Initialize plugin system
call plug#end()

set termguicolors

"the configuration options should be placed before 'colorscheme miramare'
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1

colorscheme miramare

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 1

let g:NERDTreeMinimalUI = 1

nnoremap <silent> <C-b> :NERDTreeToggle<CR>
tnoremap <C-\><C-n><C-u>i <C-\><C-n><C-w>h
tnoremap <C-\><C-n><C-u>a <C-\><C-n><C-w>j
tnoremap <C-\><C-n><C-u>e <C-\><C-n><C-w>l
tnoremap <C-\><C-n><C-u>l <C-\><C-n><C-w>k
nnoremap <C-u>i <C-w>h
nnoremap <C-u>a <C-w>j
nnoremap <C-u>e <C-w>l
nnoremap <C-u>l <C-w>k

set splitright
set splitbelow

