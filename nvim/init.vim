" Basically stolen from Luke Smith's voidrice repo
let mapleader=","

" Install vim-plug
	if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
	endif

" PLUGINS
	call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
	" Dashboard
	Plug 'glepnir/dashboard-nvim'
	" telescope 
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	" Nerdtree
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	" Project manager
	Plug 'ahmedkhalf/project.nvim'
	" Comments
	Plug 'lewis6991/gitsigns.nvim' 
	" gitsigns 
	Plug 'tpope/vim-commentary'
	" vim surround
	Plug 'tpope/vim-surround'
	" Syntax Check
	Plug 'w0rp/ale'
	" Autocomplete
	Plug 'ncm2/ncm2'
	Plug 'roxma/nvim-yarp'
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-path'
	Plug 'ncm2/ncm2-jedi'
	" Vim airline
	Plug 'arcticicestudio/nord-vim'
	Plug 'vim-airline/vim-airline'
	" Nord
	call plug#end()

set title
set mouse=a
set clipboard+=unnamedplus
set number
set relativenumber
set noruler
set noshowcmd
colorscheme nord

nnoremap c "_c
syntax on 
syntax enable

" Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set wildmode=longest,list,full 

" Dashboard
	let g:dashboard_default_executive = 'telescope'	

" Nerdtree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" gitsigns 
lua << EOF
	require('gitsigns').setup()
EOF

" Project manager

lua << EOF
	  require("project_nvim").setup {
		  manual_mode = false,
		  detection_methods = {"lsp"},
		  patters = {"git"},
		  show_hidden = true,
		  silent_chdir = true
	  }
EOF

" NCM2
	augroup NCM2
	  autocmd!
	  " enable ncm2 for all buffers
	  autocmd BufEnter * call ncm2#enable_for_buffer()
	  " :help Ncm2PopupOpen for more information
	  set completeopt=noinsert,menuone,noselect
	  " When the <Enter> key is pressed while the popup menu is visible, it only
	  " hides the menu. Use this mapping to close the menu and also start a new line.
	  inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
	  " uncomment this block if you use vimtex for LaTex
	  " autocmd Filetype tex call ncm2#register_source({
	  "           \ 'name': 'vimtex',
	  "           \ 'priority': 8,
	  "           \ 'scope': ['tex'],
	  "           \ 'mark': 'tex',
	  "           \ 'word_pattern': '\w+',
	  "           \ 'complete_pattern': g:vimtex#re#ncm2,
	  "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
	  "           \ })
	augroup END

" Ale
	let g:ale_lint_on_enter = 0
	let g:ale_lint_on_text_changed = 'never'
	let g:ale_echo_msg_error_str = 'E'
	let g:ale_echo_msg_warning_str = 'W'
	let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
	let g:ale_linters = {'python': ['flake8']}

" Spell-check set to <leader>o, 'o' for 'orthography':
" Set <leader>ñ for spanish
	map <leader>o :setlocal spell! spelllang=en_us<CR>
	map <leader>ñ :setlocal spell! spelllang=es_mx<CR>

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Vim airline
	let g:airline_left_sep = ''
	let g:airline_right_sep = ''
	let g:airline#extensions#ale#enabled = 1
	let g:airline#extensions#ale#error_symbol = 'E:'
	let g:airline#extensions#ale#warning_symbol = 'W:'
	let g:airline_powerline_fonts = 1
	let g:airline#extensions#tabline#enabled = 1
