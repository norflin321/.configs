syntax enable
filetype indent plugin on
scriptencoding utf-8
set encoding=UTF-8
set fileencoding=utf-8
set tabstop=2 softtabstop=2 shiftwidth=2 noet
autocmd Filetype rust setlocal tabstop=2 shiftwidth=2 softtabstop=2 noet
autocmd Filetype go setlocal tabstop=2 shiftwidth=2 softtabstop=2 noet
autocmd Filetype python setlocal tabstop=2 shiftwidth=2 softtabstop=2 noet
autocmd Filetype swift setlocal tabstop=2 shiftwidth=2 softtabstop=2 noet

set autoindent
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nosm
set nosc
set nolist
set ignorecase
set hlsearch
set clipboard=unnamedplus
set shellslash
set scrolloff=5
set sidescrolloff=10
set mouse=a
set autoread
set showtabline=0
set hidden
set shortmess+=c
set completeopt=menuone,noinsert,noselect
set wildignore+=**/node_modules/**,*.swp,*.zip,*.exe,**/dist/**,.DS_Store
set laststatus=2
set showmode
set splitbelow
set splitright
set background=dark
set termguicolors
set cmdheight=1
set mousescroll=ver:1,hor:0
set smoothscroll
set number
set signcolumn=number
set updatetime=100
set guicursor=a:block

call plug#begin("~/.vim/plugged")
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'tpope/vim-commentary'
	Plug 'alvan/vim-closetag'
	Plug 'jiangmiao/auto-pairs'
	Plug 'axkirillov/hbac.nvim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-treesitter/playground'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'stevearc/aerial.nvim'
	Plug 'lewis6991/satellite.nvim'
	Plug 'zivyangll/git-blame.vim'
	Plug 'norflin321/nvim-gps'
	Plug 'chrisgrieser/nvim-chainsaw'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'fannheyward/telescope-coc.nvim'
call plug#end()

map q: :q
nnoremap <Space> <NOP>
nnoremap <silent> <Esc> :noh<CR>
nmap Q <NOP>
vmap Q <NOP>
nmap # <NOP>
vmap # <NOP> nmap <c-;> <NOP>
vmap <c-;> <NOP>
nmap <c-.> <NOP>
vmap <c-.> <NOP>
nmap <c-b> <NOP>
vmap <c-b> <NOP>
nmap <c-e> <NOP>
vmap <c-e> <NOP>
nmap <c-t> <NOP>
vmap <c-t> <NOP>
nmap <c-u> <NOP>
vmap <c-u> <NOP>
nmap <c-]> <NOP>
vmap <c-]> <NOP>
nmap <c-'> <NOP>
vmap <c-'> <NOP>
nmap <c-v> <NOP>
vmap <c-v> <NOP>
nmap q <NOP>
vmap q <NOP>
nmap s <NOP>
nmap s <NOP>
nmap S <NOP>
nmap . <NOP>
vmap . <NOP>
nmap , <NOP>
vmap , <NOP>
nmap - <NOP>
vmap - <NOP>
nmap <c--> <NOP>
vmap <c--> <NOP>
nmap <c-1> <NOP>
vmap <c-1> <NOP>
nmap <c-2> <NOP>
vmap <c-2> <NOP>
nmap <c-3> <NOP>
vmap <c-3> <NOP>
nmap <c-4> <NOP>
vmap <c-4> <NOP>
nmap <c-5> <NOP>
vmap <c-5> <NOP>
nmap <c-6> <NOP>
vmap <c-6> <NOP>
nmap <c-7> <NOP>
vmap <c-7> <NOP>
nmap <c-8> <NOP>
vmap <c-8> <NOP>
nmap m <NOP>
vmap m <NOP>
nmap M <NOP>
vmap M <NOP>
nnoremap <expr> n 'Nn'[v:searchforward]
xnoremap <expr> n 'Nn'[v:searchforward]
onoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]
xnoremap <expr> N 'nN'[v:searchforward]
onoremap <expr> N 'nN'[v:searchforward]
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nnoremap x "_x
nnoremap dd "_dd
nnoremap dw "_diw
nnoremap D "_D
nnoremap cw ciw
vnoremap d "_d
nnoremap yw yiw
nnoremap <S-Enter> O<Esc>
nnoremap <C-z> <Nop>
nnoremap ) 15j
vnoremap ) 15j
nnoremap ( 15k
vnoremap ( 15k
nnoremap L 15l
vnoremap L 15l
nnoremap H 15h
vnoremap H 15h
map 8 <Nop>
map 7 <Nop>
map 6 <Nop>
map 5 <Nop>
map 4 <Nop>
map 3 <Nop>
map 2 <Nop>
map 1 <Nop>
map 9 $
vmap 9 $h
map 8 %
vmap < <gv
vmap > >gv
vmap <silent> H :left<CR>gv
vmap <silent> L :right<CR>gv
vmap <silent> <C-c> gc
nmap <silent> <C-c> gcc
nnoremap J mzJ`z
cnoremap <c-v> <c-r>+
map <CR> <Nop>
map ga <Nop>
nnoremap D "_dd
nnoremap <silent> * :let @/= '\<' . expand('<cword>') . '\>' <bar> set hls <cr>
vmap K <Nop>
map p ]p
map P pV=
nnoremap z <NOP>
nnoremap z zz

let g:AutoPairsMultilineClose = 0
let g:closetag_filenames = '*.html,*.tsx,*.jsx,*.vue'

let g:coc_global_extensions = [
	\"coc-tsserver",
	\"coc-json",
	\"coc-go",
	\"coc-prettier",
	\"coc-css",
	\"coc-pyright",
	\"coc-lua",
	\"coc-eslint",
\]

func! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		exe 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunc

func! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunc

" coc keymaps
nmap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> gn <Plug>(coc-rename)
nmap <silent> <C-d> <Plug>(coc-diagnostic-next-error)
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#_select_confirm() : <SID>check_back_space() ? "\<TAB>" : coc#refresh()

" telescope keymaps
nmap <silent> gd :Telescope coc definitions<CR>
nmap <silent> gy :Telescope coc type_definitions<CR>
nmap <silent> gr *:Telescope coc references<CR>
nmap <silent> gi *:Telescope coc implementations<CR>
nmap <silent> <c-p> :Telescope find_files<CR>
nmap <silent> <c-m> :Telescope oldfiles<CR>
nmap <silent> <c-f> :Telescope live_grep<CR>

" other plugins keymaps
nnoremap <silent> <c-n> :NvimTreeFindFileToggle<CR>
nmap <silent> <c-t> :AerialToggle<CR>

autocmd BufWritePost init.vim source %
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd BufWritePre *.go :call CocAction('organizeImport')

command H exe ":TSHighlightCapturesUnderCursor"
command CF exe ":e $MYVIMRC"
command BL exe ":call gitblame#echo()"
command PI exe ":PlugInstall"
command PC exe ":PlugClean"
command PU exe ":PlugUpdate"
command GG exe ":CellularAutomaton make_it_rain"

func! NvimGps() abort
	return luaeval("require'nvim-gps'.is_available()") ? luaeval("require'nvim-gps'.get_location()") : ""
endf

set statusline=%{&modified?'\[+]\ ':''}%f%r\ %{NvimGps()}%=%-5.(%l,%c%)\ %L

lua require("init")

colors dogrun
