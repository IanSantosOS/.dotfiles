"===============================================================================
" OPTIONS
"===============================================================================

" TODO
" Future me... organize this file better, I'm tired...
" Some descriptions are missing
" Organize the headings better
" Maybe create more keymaps (and make every one 'noremap')
" Keymap for toggle colorcolumn

colorscheme retrobox
set background=dark        " Use dark background theme

syntax enable
syntax on

set nocompatible
set termguicolors          " Enable 24-bit RGB colors in the terminal
set mouse=a                " Enable mouse support

set noerrorbells           " Disable error beeps
set novisualbell           " Disable visual bell

set encoding=utf-8         " Set internal encoding to UTF-8
set fileencoding=utf-8     " Save files with UTF-8 encoding

" let g:netrw_banner=0     " Hide netrw banner
let g:netrw_altv=1         " Open splits to the right
let g:netrw_alto=1         " Open splits to the bottom

set splitbelow             " Open horizontal splits below the current window
set splitright             " Open vertical splits to the right of the current window

set path+=**              " Search for files recursively in subdirectories

set shortmess+=asW

set wildoptions=fuzzy,pum,tagfile

set formatoptions=tcqronl1jp

set completeopt=menuone,noinsert,noselect,popup " Configure completion behavior

set number                 " Show line numbers
set relativenumber         " Show relative line numbers

set cursorline             " Highlight the current line

set nowrap                 " Disable line wrapping
set scrolloff=10           " Keep 10 lines above and below the cursor while scrolling
set sidescrolloff=8        " Keep 08 columns to the side when scrolling horizontally

set autoindent             " Enable automatic indentation based on previous line
set smartindent            " Automatically insert indentation in code blocks
set cindent                " Enable C/C++ style indentation
set breakindent            " Maintain indentation on wrapped lines

set smarttab               " Use shiftwidth when inserting tabs
set expandtab              " Convert tabs to spaces
set softtabstop=4          " Number of spaces for a tab when editing
set shiftwidth=4           " Set indentation width to 4 spaces
set tabstop=4              " Display a tab as 4 spaces
set shiftround

set showmatch              " Highlight matching brackets
set ignorecase             " Case-insensitive search
set smartcase              " Case-sensitive if uppercase is used
set incsearch              " Show matches as you type
set hlsearch               " Highlight search results

set showcmd                " Display command-line
set cmdheight=1            " Command-line height
set laststatus=2           " Always show the status line

set undodir=~/.vim/undodir " Set undo file directory
set undofile               " Enable persistent undo
set noswapfile             " Disable swap files
set nobackup               " Disable backup files
set nowritebackup          " Disable write backup

set hidden                 " Keep buffers in memory when abandoned

set autoread               " Auto-reload files when changed externally

set magic                  " Enable extended regex patterns

set foldcolumn=1           " Show fold column

set regexpengine=0         " Auto-select the best regex engine

"----------------------------------------------------------------
" Packages
"----------------------------------------------------------------

filetype plugin indent on

packadd! hlyank
packadd! comment
packadd! nohlsearch

"----------------------------------------------------------------
" Status Line
"----------------------------------------------------------------

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
set statusline+=%=
set statusline+=\ %Y\ \|
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\ \|
set statusline+=\ %{&fileformat}
set statusline+=\ 
set statusline+=%#StatusLine#
set statusline+=\ %l/%c-%v
set statusline+=\ [%p%%]
set statusline+=\ 

"===============================================================================
" COMMANDS
"===============================================================================

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

"===============================================================================
" KEYMAPS
"===============================================================================

let mapleader = " "

"----------------------------------------------------------------
" Others
"----------------------------------------------------------------

" For some reason <C-]> in my keyboard isn't <C-]>...
" So I have to remap it.
nmap  <C-]>
vmap  <C-]>
imap  <C-]>
cmap  <C-]>

" Auto create a variable from a substitute value
inoremap <C-R><C-V> <C-R>. = <C-R>"

" Easy escape in INSERT mode
inoremap jk <ESC>

" Select all text
nmap <leader>a govG$
vmap <leader>a <ESC>govG$

" Toggle list (the tab and space characters)
nmap <leader>it <CMD>set list!<CR>
nmap <leader>/ <CMD>let @/=''<CR>

" Moving lines
nnoremap <silent> <leader>j :m .+1<CR>==
nnoremap <silent> <leader>k :m .-2<CR>==
vnoremap <silent> J :m '>+1<CR>gv=gv
vnoremap <silent> K :m '<-2<CR>gv=gv

"----------------------------------------------------------------
" File Related
"----------------------------------------------------------------

" Search (bad habits, except the netrw one)
nnoremap <leader>e <CMD>Ex<CR>
nnoremap <leader>fp :find 
nnoremap <leader>ph :vert h 
nnoremap <leader>pb :buffer 

" Buffer delete
nnoremap <leader>bd <CMD>bdelete<CR>

" Quit and save keymaps
nmap <leader>q <CMD>quit<CR>
nmap <leader>Q <CMD>q!<CR>
nmap <leader>w <CMD>update<CR>
nmap <leader>W <CMD>wa<CR>

"----------------------------------------------------------------
" Better Defaults
"----------------------------------------------------------------

" Why this isn't the default vim?
nnoremap Y y$

" Better joining lines
nnoremap J mzJ`z

" Better indent
vnoremap < <gv
vnoremap > >gv

" Better j and k
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
vnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
vnoremap <expr> k (v:count == 0 ? 'gk' : 'k')

" Center cursor when searching
nnoremap n nzzzv
vnoremap n nzzzv
nnoremap N Nzzzv
vnoremap N Nzzzv

" Center cursor when scrolling
nnoremap <C-u> <C-u>zz
vnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
vnoremap <C-d> <C-d>zz
nnoremap <C-f> <C-f>zz
vnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
vnoremap <C-b> <C-b>zz

"----------------------------------------------------------------
" Clipboard
"----------------------------------------------------------------

xnoremap <leader>p "_dP
nnoremap <leader>Y "+Y
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>P "+p
vnoremap <leader>P "+p
nnoremap <leader>d "_d
vnoremap <leader>d "_d

"----------------------------------------------------------------
" Tabs (why?)
"----------------------------------------------------------------

nnoremap <leader>tn <CMD>tabnew<CR>
nnoremap <leader>tx <CMD>tabclose<CR>
nnoremap <leader>to <CMD>tabonly<CR>
nnoremap <leader>tm :tabmove 
nnoremap <leader>pt <CMD>tabprevious<CR>
nnoremap <leader>nt <CMD>tabnext<CR>

"----------------------------------------------------------------
" Window / Panel
"----------------------------------------------------------------

" Navigate
nnoremap <C-k> <CMD>wincmd k<CR>
nnoremap <C-j> <CMD>wincmd j<CR>
nnoremap <C-h> <CMD>wincmd h<CR>
nnoremap <C-l> <CMD>wincmd l<CR>

" Resize
nnoremap <C-M-k> <CMD>resize +5<CR>
nnoremap <c-M-j> <CMD>resize -5<CR>
nnoremap <c-M-h> <CMD>vertical resize -10<CR>
nnoremap <c-M-l> <CMD>vertical resize +10<CR>

" Resize with arrow keys (the forbidden technique)
nnoremap <Up> <CMD>resize +5<CR>
nnoremap <Down> <CMD>resize -5<CR>
nnoremap <Left> <CMD>vertical resize -10<CR>
nnoremap <Right> <CMD>vertical resize +10<CR>

"===============================================================================
" AUTOCMDS
"===============================================================================

" Return to last edit position when opening files
augroup RestoreCursor
    autocmd!
    autocmd BufReadPost *
        \ let line = line("'\"")
        \ | if line >= 1 && line <= line("$") && &filetype !~# 'commit'
        \      && index(['xxd', 'gitrebase'], &filetype) == -1
        \      && !&diff
        \ |   execute "normal! g`\""
        \ | endif
augroup END

"===============================================================================
" FUNCTIONS
"===============================================================================

" Function to show the brach name on the status line
" https://shapeshed.com/vim-statuslines/
function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatusLineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?' '.l:branchname.' ':''
endfunction
