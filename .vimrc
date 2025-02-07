"===============================================================================
" VIM
"===============================================================================

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Configuration
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set nocompatible

set wildmenu

set path +=**

set updatetime=300

set encoding=utf-8
set fileencoding=utf-8

" set termguicolors
syntax enable

set number
set relativenumber

set colorcolumn=80
set cursorline

set splitbelow
set splitright

set nowrap
set scrolloff=8
set sidescrolloff=8

set autoindent
set smartindent
set cindent

set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set ignorecase
set smartcase
set hlsearch
set incsearch

set showcmd
set cmdheight=1
set noshowmode

set showmatch

set mouse=a

set ruler

set clipboard=unnamedplus

set undodir=~/.vim/undodir
set undofile
set noswapfile
set nobackup
set nowritebackup

set lazyredraw

set hidden

set autoread
au FocusGained,BufEnter * silent! checktime

set magic

set noerrorbells
set novisualbell

" Always show the status line
set laststatus=2

set foldcolumn=1

set regexpengine=0

set background=dark

" Format the status line
" set statusline=\ %<%f%m%r%h\ %w%=%l/%c\ [%p%%]\ 
set statusline=\ 
set statusline+=%{mode()}
" set statusline+=%{StatusLineMode()}
set statusline=\ 
set statusline+=%<%f%m%r%h\ %w
set statusline+=%#StatusLineNC#
set statusline+=%{StatusLineGit()}
set statusline+=%#LineNr#
set statusline+=%=
set statusline+=%#StatusLineNC#
set statusline+=\ %Y\ \|
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\ \|
set statusline+=\ %{&fileformat}
set statusline+=\ 
set statusline+=%#StatusLine#
set statusline+=\ %l/%c
set statusline+=\ [%p%%]
set statusline+=\ 

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Commands
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Keymap
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

let mapleader = " "

nmap <C-s> :update<CR>
vmap <C-s> :update<CR>
imap <C-s> :update<CR>

nmap <silent> <leader>/ :let @/=''<CR>
vmap <silent> <leader>/ :let @/=''<CR>

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext<cr>
map <leader>te :tabedit <C-r>=escape(expand("%:p:h"), " ")<cr>/

xnoremap <silent> <leader>p "_dP
nnoremap <silent> <leader>Y "+Y
nnoremap <silent> <leader>y "+y
vnoremap <silent> <leader>y "+y
nnoremap <silent> <leader>dd "_d
vnoremap <silent> <leader>dd "_d

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" AutoCMD
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Functions
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Function to show the brach name on the status line
" https://shapeshed.com/vim-statuslines/
function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatusLineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?' '.l:branchname.' ':''
endfunction

function! StatusLineMode()
    return mode() ==# 'n' ? 'NORMAL' :
            \ mode() ==# 'i' ? 'INSERT' :
            \ mode() ==# 'v' ? 'VISUAL' :
            \ mode() ==# 'V' ? 'V-LINE' :
            \ mode() ==# '' ? 'V-BLOCK' :
            \ mode() ==# 'R' ? 'REPLACE' :
            \ mode() ==# 'c' ? 'COMMAND' :
            \ mode()
endfunction

"===============================================================================
" BUILTIN PLUGINS
"===============================================================================

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Configuration
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

filetype plugin indent on

let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_winsize=20

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Keymap
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

"===============================================================================
" EXTERNAL PLUGINS
"===============================================================================

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Installation
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Vim Plug (Package Manager)
" https://github.com/junegunn/vim-plug

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
           \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | q  " Instala os plugins e fecha
endif

call plug#begin()

Plug 'junegunn/seoul256.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Configuration
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

"=== seoul256 ======================
" ------------------------------
" | Range | Darkest | Lightest |
" |-------+---------+----------|
" | Dark  | 233     | 239      |
" | Light | 252     | 256      |
" ------------------------------
let g:seoul256_background = 235
colorscheme seoul256

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Keymap
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" map <silent> <C-Up> :TmuxNavigateUp<CR>
" map <silent> <C-Down> :TmuxNavigateDown<CR>
" map <silent> <C-Left> :TmuxNavigateLeft<CR>
" map <silent> <C-Right> :TmuxNavigateRight<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" AutoCMD
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
  \| endif
