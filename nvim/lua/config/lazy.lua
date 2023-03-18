-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader=" "
require("lazy").setup({
    spec = {
        { import = "plugins" }
    },
    ui = {
        border = "none",
        icons = {
            cmd = "›",
            config = "⏣",
            event = "🕭",
            ft = "✎ ",
            init = "⏻ ",
            import = "↶ ",
            keys = "🖮",
            lazy = "zzz",
            loaded = "✓",
            not_loaded = "✗",
            plugin = "⎆ ",
            runtime = "⭯ ",
            source = "⎙",
            start = "⛿",
            task = "✓",
            list = {
                "‒",
                "➔"
            },
        },
    }
})
