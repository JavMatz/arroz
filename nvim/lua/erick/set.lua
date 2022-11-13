vim.opt.compatible = false

vim.opt.title = true

vim.cmd("filetype plugin on")
-- vim.cmd("syntax on")

-- " Disables automatic commenting on newline:
vim.cmd("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")

vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true

vim.opt.hlsearch = false

vim.opt.lazyredraw = true
vim.opt.signcolumn = "yes"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.cursorline = true
vim.opt.report = 2
vim.opt.synmaxcol = 200

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.ruler = true

vim.opt.cmdheight = 2
vim.opt.scrolloff = 8
vim.opt.clipboard = "unnamedplus"
vim.opt.encoding = "utf-8"

vim.g.mapleader=" "
vim.opt.wildmode = "longest,list,full"
vim.opt.updatetime = 50
vim.opt.signcolumn = "auto"
vim.opt.colorcolumn = "80"

vim.g.modus_termtrans_enable = 1
