"===============================================================================
" VIM
"===============================================================================

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Configuration
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set nocompatible           " Disable VI compatibility mode

set wildmenu               " Enable cmdline completion menu

set path +=**              " Search for files recursively in subdirectories

set updatetime=30          " Faster update time

set encoding=utf-8         " Set internal encoding to UTF-8
set fileencoding=utf-8     " Save files with UTF-8 encoding

set termguicolors          " Enable 24-bit RGB colors in the terminal
syntax enable              " Enable syntax highlighting

set number                 " Show line numbers
set relativenumber         " Show relative line numbers

set colorcolumn=81         " Highlight column 81 for line length indication

set cursorline             " Highlight the current line

set splitbelow             " Open horizontal splits below the current window
set splitright             " Open vertical splits to the right of the current window

set nowrap                 " Disable line wrapping
set scrolloff=10           " Keep 10 lines above and below the cursor while scrolling
set sidescrolloff=8        " Keep 08 columns to the side when scrolling horizontally

set autoindent             " Enable automatic indentation based on previous line
set smartindent            " Automatically insert indentation in code blocks
set cindent                " Enable C/C++ style indentation

set smarttab               " Use shiftwidth when inserting tabs
set expandtab              " Convert tabs to spaces
set softtabstop=4          " Number of spaces for a tab when editing
set shiftwidth=4           " Set indentation width to 4 spaces
set tabstop=4              " Display a tab as 4 spaces

set ignorecase             " Case-insensitive search
set smartcase              " Case-sensitive if uppercase is used
set incsearch              " Show matches as you type
set hlsearch               " Highlight search results

set showcmd                " Display command-line
set cmdheight=1            " Command-line height
" set noshowmode             " Hide mode display inside cmdline (e.g., -- INSERT --)

set showmatch              " Highlight matching brackets

set mouse=a                " Enable mouse support

set ruler                  " Show cursor position

set clipboard=unnamedplus  " Use system clipboard

set undodir=~/.vim/undodir " Set undo file directory
set undofile               " Enable persistent undo
set noswapfile             " Disable swap files
set nobackup               " Disable backup files
set nowritebackup          " Disable write backup

set lazyredraw             " Optimize redrawing for performance

set hidden                 " Keep buffers in memory when abandoned

set breakindent            " Maintain indentation on wrapped lines

set timeoutlen=1000        " Set key sequence timeout in milliseconds

set completeopt=menuone,noinsert,noselect,popup " Configure completion behavior

set autoread               " Auto-reload files when changed externally
au FocusGained,BufEnter * silent! checktime " Check for file changes on focus

set magic                  " Enable extended regex patterns

set noerrorbells           " Disable error beeps
set novisualbell           " Disable visual bell

set laststatus=2           " Always show the status line

set foldcolumn=1           " Show fold column

set regexpengine=0         " Auto-select the best regex engine

set background=dark        " Use dark background theme

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Format the status line
" set statusline=\ %<%f%m%r%h\ %w%=%l/%c\ [%p%%]\ 
set statusline=%#StatusLine#
set statusline+=\ 
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

inoremap <C-R><C-V> <C-R>. = <C-R>"

nmap <C-s> <CMD>update<CR>
vmap <C-s> <CMD>update<CR>
imap <C-s> <CMD>update<CR>

nmap <leader>/ <CMD>let @/=''<CR>
vmap <leader>/ <CMD>let @/=''<CR>

inoremap jk <ESC>
inoremap kj <ESC>

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Useful mappings for managing tabs
noremap <leader>tn <CMD>tabnew<CR>
noremap <leader>to <CMD>tabonly<CR>
noremap <leader>tx <CMD>tabclose<CR>
noremap <leader>tm :tabmove 
noremap <leader>pt <CMD>tabprevious<CR>
noremap <leader>nt <CMD>tabnext<CR>
noremap <leader>te :tabedit <C-r>=escape(expand("%:p:h"), " ")<CR>/

xnoremap <leader>p "_dP
nnoremap <leader>Y "+Y
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>P "+p
vnoremap <leader>P "+p
nnoremap <leader>dd "_d
vnoremap <leader>dd "_d

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

" function! StatusLineMode()
"     return mode() ==# 'n' ? 'NORMAL' :
"             \ mode() ==# 'i' ? 'INSERT' :
"             \ mode() ==# 'v' ? 'VISUAL' :
"             \ mode() ==# 'V' ? 'V-LINE' :
"             \ mode() ==# '' ? 'V-BLOCK' :
"             \ mode() ==# 'R' ? 'REPLACE' :
"             \ mode() ==# 'c' ? 'COMMAND' :
"             \ mode()
" endfunction

"===============================================================================
" BUILTIN PLUGINS
"===============================================================================

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Configuration
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

filetype plugin indent on

let g:netrw_banner=0       " Hide netrw banner
let g:netrw_altv=1         " Open splits to the right
let g:netrw_liststyle=3    " Use tree-style view
let g:netrw_winsize=20     " Window size

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Keymap
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

nnoremap <leader>fe <CMD>Lexplore!<CR>

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
let g:seoul256_background = 234
colorscheme seoul256

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Keymap
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

map <C-Up>    <CMD>TmuxNavigateUp<CR>
map <C-Down>  <CMD>TmuxNavigateDown<CR>
map <C-Left>  <CMD>TmuxNavigateLeft<CR>
map <C-Right> <CMD>TmuxNavigateRight<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" AutoCMD
" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
  \| endif
