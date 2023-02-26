vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldenable = false
vim.opt.foldminlines = 5
vim.opt.fillchars = {
    fold = " "
}
vim.cmd("set foldlevel=99")
