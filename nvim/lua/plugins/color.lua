return {
    {
        'ellisonleao/gruvbox.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            if vim.fn.has("termguicolors") then
                vim.opt.termguicolors = true
            end
            vim.o.background = "dark"
            require("gruvbox").setup({
                contrast = "hard",
                dim_inactive = true
            })
            vim.cmd("colorscheme gruvbox")
        end,
    },
    {
        'ishan9299/modus-theme-vim',
        lazy = false,
        priority = 1000,
        config = function()
            if vim.fn.has("termguicolors") then
                vim.opt.termguicolors = true
            end
            vim.g.modus_yellow_comments = 1
            vim.g.modus_green_strings  = 1
            vim.g.modus_cursorline_intense = 1
            -- vim.g.modus_termtrans_enable = 1
            -- vim.cmd("colorscheme modus-vivendi")
        end,
    }
}
