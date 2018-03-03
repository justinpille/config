set termguicolors
colo desert

"Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:ale_linters = {}
let g:ale_linters['javascript'] = ['eslint']
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma -es5'

" Include .js files for JSX syntax highlighting
let g:jsx_ext_required = 0

" Set async mode on Prettier
let g:prettier#exec_cmd_async = 1

" Run Prettier before saving
let g:prettier#autoformat = 0

autocmd BufWritePre *.js Prettier

"disable automatic comment insertion
autocmd BufNewFile,BufRead * setlocal formatoptions-=r

inoremap jk <esc>
vnoremap jk <esc>
inoremap kj <esc>
vnoremap kj <esc>

nnoremap _ yyp

nnoremap <up> ddkP
nnoremap <down> ddp

let mapleader = ','
noremap <leader>w :w<cr>

" Quickly edit/reload this configuration file
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>EV :e! $MYVIMRC<cr>
nnoremap <leader>so :w<bar>:so %<cr>

" Use alt + movement keys in insert mode
inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>



