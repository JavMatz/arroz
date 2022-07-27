let mapleader = ","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
" EDITING
	" Change surronding symbols of words
	Plug 'tpope/vim-surround'
	" Toggle comments
	Plug 'tpope/vim-commentary'

" FUNCTIONALITY
	" File explorer
	Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
	" git gutter
	Plug 'airblade/vim-gitgutter'
	" Autocomplete
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

" UI RELATED
	Plug 'vim-airline/vim-airline' 
	Plug 'morhetz/gruvbox'
	" Plug 'Yggdroot/indentLine'
	
	" Plug 'jreybert/vimagit'
	" Plug 'vimwiki/vimwiki'
	" Plug 'ap/vim-css-color'
call plug#end()

" Some basics:
" Basics
	set title
	set go=a
	" set mouse=a
	set clipboard+=unnamedplus
	set noshowmode
  set guicursor=
  set nohlsearch
  set hidden
	set noruler
	set laststatus=0
	set noshowcmd
	set encoding=utf-8
  set scrolloff=8
	set number relativenumber
  set smarttab
  set cindent
  set tabstop=2
  set shiftwidth=2
	set expandtab
	colorscheme gruvbox
	set bg=dark
	noremap c "_c
	inoremap ññ <ESC> 
	set nocompatible
	filetype plugin on
	syntax on
" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Perform dot commands over visual blocks:
	vnoremap . :normal .<CR>
" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>
" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>ñ :setlocal spell! spelllang=es_mx<CR>
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Chadtree	
	nmap <C-n> :CHADopen<CR>

" Indentline
	" let g:indentLine_defaultGroup = 'SpecialKey'
	" let g:vim_json_conceal=0
	" let g:markdown_syntax_conceal=0

" Airline
	" let g:airline#extensions#hunks#enabled = 0
	" let g:airline#extensions#branch#enabled = 1
	let g:airline_section_z = ' %p%% : %l/%L : %c'
	let g:airline_left_sep = ''
	let g:airline_right_sep = ''

" coc
  let g:coc_global_extensions = [
    \ 'coc-pairs',
    \ 'coc-eslint', 
    \ 'coc-prettier', 
    \ 'coc-json', 
    \ 'coc-tsserver',
    \ ]

" if hidden is not set, TextEdit might fail.
  set hidden
" Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
  set cmdheight=2
  set updatetime=300
" don't give |ins-completion-menu| messages.
  set shortmess+=c

" always show signcolumns
  set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
  
" Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()
