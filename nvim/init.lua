require('config')

vim.opt.compatible = false
vim.opt.title = true

vim.cmd("filetype plugin on")
vim.cmd("syntax on")

-- DISABLES AUTOMATIC COMMENTING ON NEWLINE
vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = {"*"},
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions:remove('c')
        vim.opt.formatoptions = vim.opt.formatoptions:remove('r')
        vim.opt.formatoptions = vim.opt.formatoptions:remove('o')
    end
})

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true

vim.opt.hlsearch = false

vim.opt.lazyredraw = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.shortmess = vim.opt.shortmess + "c"

vim.opt.report = 2
vim.opt.synmaxcol = 200

vim.opt.cursorline = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "number"
vim.opt.list = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cmdheight = 2
vim.opt.scrolloff = 8
vim.opt.clipboard = "unnamedplus"
vim.opt.encoding = "utf-8"

vim.opt.path = vim.opt.path + "**"
vim.opt.wildmode = "full"
vim.opt.updatetime = 50

-- NETRW
vim.cmd("let g:netrw_banner = 0")

-- FOLDING
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
vim.opt.foldcolumn = "auto:2"
vim.opt.foldminlines = 5
vim.opt.fillchars = {
    fold = " "
}
vim.opt.foldlevel = 5
