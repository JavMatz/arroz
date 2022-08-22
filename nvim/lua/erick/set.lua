vim.opt.title = true
vim.opt.showmode = false
-- vim.opt.guicursor = ""
vim.opt.hlsearch = false
vim.g.mapleader=","
vim.opt.hidden = true
vim.opt.ruler = false
vim.opt.laststatus = 0
vim.opt.showcmd = false
vim.opt.encoding = "utf-8"
vim.opt.scrolloff = 8
--Keep an eye on this
vim.opt.smarttab = true 
vim.opt.cindent = true
-- 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.compatible = false
vim.opt.wildmode = "longest,list,full"
vim.opt.cmdheight = 2
vim.opt.updatetime = 50 
vim.opt.signcolumn = "auto"
vim.opt.colorcolumn = "80"

vim.cmd("filetype plugin on")
-- -- " Disables automatic commenting on newline:
vim.cmd("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
