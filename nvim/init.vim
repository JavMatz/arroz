let mapleader = ","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
" Change surronding symbols of words
Plug 'tpope/vim-surround'
" File explorer
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
" UI related
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
" PYTHON "
" syntax check 
" Plug 'w0rp/ale'
" Autocomplete
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-jedi'
" Formater
" Plug 'Chiel92/vim-autoformat'

" Plug 'junegunn/goyo.vim'
" Plug 'jreybert/vimagit'
" Plug 'lukesmithxyz/vimling'
" Plug 'vimwiki/vimwiki'
" Plug 'tpope/vim-commentary'
" Plug 'ap/vim-css-color'
call plug#end()

" Some basics:

set title
set go=a
" set mouse=a
set clipboard+=unnamedplus
set noshowmode
set noruler
set laststatus=0
set noshowcmd
colorscheme gruvbox
set bg=dark
noremap c "_c
inoremap ññ <ESC> 
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
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
" let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_z = ' %p%% : %l/%L : %c'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
" Python "

" vim-autoformat
" noremap <F3> :Autoformat<CR>

" NCM2
" augroup NCM2
"   autocmd!
"   " enable ncm2 for all buffers
"   autocmd BufEnter * call ncm2#enable_for_buffer()
"   " :help Ncm2PopupOpen for more information
"   set completeopt=noinsert,menuone,noselect
"   " When the <Enter> key is pressed while the popup menu is visible, it only
"   " hides the menu. Use this mapping to close the menu and also start a new line.
"   inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
"   " uncomment this block if you use vimtex for LaTex
"   " autocmd Filetype tex call ncm2#register_source({
"   "           \ 'name': 'vimtex',
"   "           \ 'priority': 8,
"   "           \ 'scope': ['tex'],
"   "           \ 'mark': 'tex',
"   "           \ 'word_pattern': '\w+',
"   "           \ 'complete_pattern': g:vimtex#re#ncm2,
"   "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
"   "           \ })
" augroup END
" 
" " Ale
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {'python': ['flake8']}
