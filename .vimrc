"===============================================================================
" OPTIONS
"===============================================================================

filetype plugin indent on
syntax enable
syntax on

colorscheme retrobox
set background=dark
highlight SpecialKey guifg=#5C5C5C

" LARGE OPTIONS
set completeopt=menuone,popup,fuzzy,noinsert
set wildoptions=fuzzy,pum,tagfile
set fillchars=fold:~,
            \foldsep:\ ,
            \foldinner:\ 
set listchars=eol:\ ,
            \tab:⟫\ ,
            \space:·,
            \leadmultispace:\|···,
            \trail:•,
            \extends:>,
            \precedes:<,
            \nbsp:✕

" NETRW
" let g:netrw_banner=0       " Hide netrw banner
let g:netrw_altv=1           " Open splits to the right
let g:netrw_alto=1           " Open splits to the bottom

" INDENTATION
set smarttab                 " Use shiftwidth when inserting tabs
set noexpandtab              " If true, convert tabs to spaces
set softtabstop=0            " Number of spaces for a tab when editing
set shiftwidth=0             " Set indentation width to 4 spaces
set tabstop=4                " Display a tab as 4 spaces
set shiftround               " Round indent to multiple of 'shiftwidth'

" UNDOING AND BACKUP
set undodir=~/.vim/undodir   " Set undo file directory
set undofile                 " Enable persistent undo
set noswapfile               " Disable swap files
set nobackup                 " Disable backup files
set nowritebackup            " Disable write backup

" OPTIONS IN ALPHABETICAL ORDER
set allowrevins              " <C-_> enters reverse mode in Insert Mode
set autoindent               " Use the indentation of the previous line
set autoread                 " Auto-reload files when changed externally
set breakindent              " Maintain indentation on wrapped lines
set cindent                  " Enable C/C++ style indentation
set colorcolumn=80,120       " A visual character limit
set complete+=kspell         " Use the currently active spell checking spell
set confirm                  " Options to confirm certain operations
set copyindent               " Copy the indentation of the existing lines
set cursorline               " Highlight the current line
set encoding=utf-8           " Set internal encoding to UTF-8
set foldcolumn=1             " Show fold column
set foldmethod=indent        " Indentation based folding
set foldlevelstart=99        " Don't start closed
set foldlevel=99             " Don't start closed
set formatoptions=tcqronl1jp " (:h formatoptions)
set hidden                   " Keep buffers in memory when abandoned
set hlsearch                 " Highlight search results
set ignorecase               " Case-insensitive search
set incsearch                " Show matches as you type
set laststatus=2             " Always show the status line
set linebreak                " Alter linebreaks when 'wrap' is on
set list                     " Enable 'listchars'
set mouse=a                  " Enable mouse support
set nocompatible             " No compatibility with VI
set noerrorbells             " Disable error beeps
set novisualbell             " Disable visual bell
set noruler                  " Disable default ruler
set nowrap                   " Disable line wrapping
set number                   " Show line numbers
set path+=**                 " Search for files recursively in subdirectories
set pumheight=20             " Popup menu height
set relativenumber           " Show relative line numbers
set scrolloff=10             " Vertical scroll
set shortmess=aoOstTWcCF     " (:h shortmess)
set showbreak=↳              " Character for wrap text
set showcmd                  " Display command-line
set showmatch                " Highlight matching brackets
set showmode                 " Show current mode on the cmdline
set sidescrolloff=8          " Horizontal scroll
set smartcase                " Case-sensitive if uppercase is used
set smartindent              " Do smart autoindenting when starting a new line
set splitbelow               " Horizontal splits go below the current window
set splitright               " Vertical splits go right the current window
set termguicolors            " Enable 24-bit RGB colors in the terminal
set timeoutlen=300           " Time in ms to wait a mapped sequence
set title                    " Allow nvim to update the (GUI or Terminal) title
set updatetime=500           " Time in ms to update CursorHold and swap files
set virtualedit=block        " Allow virtual editing in Visual Block Mode
set wildignorecase           " Ignore case when completing file and directories

" [ PACKAGES ] -----------------------------------------------------------------

packadd! hlyank              " Highlight when yanking
packadd! comment             " Comment functionality
packadd! matchit             " More things fo '%' to match (like tags and ifs)
packadd! nohlsearch          " Hide the search highlight after some time
packadd! editorconfig        " Editorconfig compatibility

" [ STATUS LINE ] --------------------------------------------------------------

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

" Function to show the brach name on the status line
" https://shapeshed.com/vim-statuslines/
function! StatusLineGit()
	let l:cmd = "git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'"
	let l:gitbranch = system(l:cmd)
	return strlen(l:gitbranch) > 0?' '.l:gitbranch.' ':''
endfunction

"===============================================================================
" KEYMAPS
"===============================================================================

let mapleader = " "

" [ OTHERS ] -------------------------------------------------------------------

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
vmap iB <ESC>govG$

" Toggle list (the tab and space characters)
nmap <leader>it <CMD>set list!<CR>

" Clear Search
nmap <leader>/ <CMD>let @/=''<CR>

" Replace the word under the cursor (Case Sensitive)
nnoremap <leader>ss :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<left><left><left>

" Moving lines
nnoremap <silent> <leader>j :m .+1<CR>==
nnoremap <silent> <leader>k :m .-2<CR>==
vnoremap <silent> J :m '>+1<CR>gv=gv
vnoremap <silent> K :m '<-2<CR>gv=gv

" [ FILE RELATED ] -------------------------------------------------------------

" Search (bad habits, except the netrw one)
nnoremap - <CMD>Ex<CR>
nnoremap <leader>pf :find 
nnoremap <leader>ph :vert h 
nnoremap <leader>pb :buffer 

" Buffer delete
nnoremap <leader>bd <CMD>bdelete<CR>

" Quit and save keymaps
nmap <leader>q <CMD>quit<CR>
nmap <leader>Q <CMD>q!<CR>
nmap <leader>w <CMD>update<CR>
nmap <leader>W <CMD>wa<CR>

" [ BETTER DEFAULTS ] ----------------------------------------------------------

" Why this isn't the default vim?
nnoremap Y y$

" Better joining lines
nnoremap J mzJ`z

" Better indent
vnoremap < <gv
vnoremap > >gv

" Better j and k
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
vnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
vnoremap <expr> k (v:count == 0 ? 'gk' : 'k')

" Center cursor when scrolling or searching
nnoremap <C-u> <C-u>zz
vnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
vnoremap <C-d> <C-d>zz
nnoremap <C-f> <C-f>zz
vnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
vnoremap <C-b> <C-b>zz
nnoremap n nzzzv
vnoremap n nzzzv
nnoremap N Nzzzv
vnoremap N Nzzzv

" [ CLIPBOARD ] ----------------------------------------------------------------

xnoremap <leader>p "_dP
nnoremap <leader>Y "+Y
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>P "+p
vnoremap <leader>P "+p
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" [ TABS ] ---------------------------------------------------------------------

nnoremap <leader><tab><tab> <CMD>tabnew<CR>
nnoremap <leader><tab>c <CMD>tabclose<CR>
nnoremap <leader><tab>o <CMD>tabonly<CR>
nnoremap <leader><tab>m :tabmove 
nnoremap <leader><tab>p <CMD>tabprevious<CR>
nnoremap <leader><tab>n <CMD>tabnext<CR>
nnoremap <leader><tab>e <CMD>tabedit %<CR>

" [ WINDOWS/PANEL ] ------------------------------------------------------------

nnoremap <C-k> <CMD>wincmd k<CR>
nnoremap <C-j> <CMD>wincmd j<CR>
nnoremap <C-h> <CMD>wincmd h<CR>
nnoremap <C-l> <CMD>wincmd l<CR>

nnoremap <C-M-k> <CMD>resize +5<CR>
nnoremap <c-M-j> <CMD>resize -5<CR>
nnoremap <c-M-h> <CMD>vertical resize -10<CR>
nnoremap <c-M-l> <CMD>vertical resize +10<CR>

nnoremap <Up> <CMD>resize +5<CR>
nnoremap <Down> <CMD>resize -5<CR>
nnoremap <Left> <CMD>vertical resize -10<CR>
nnoremap <Right> <CMD>vertical resize +10<CR>

"===============================================================================
" AUTOCMDS
"===============================================================================

" Return to last edit position when opening files
" `:h restore-cursor`
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
" COMMANDS
"===============================================================================

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
