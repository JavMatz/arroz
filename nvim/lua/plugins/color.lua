return {
    {
        'rockerBOO/boo-colorscheme-nvim',
        lazy = false,
        priority = 1000,
        config = function()
            -- if vim.fn.has("termguicolors") then
            --     vim.opt.termguicolors = true
            -- end
            -- require("boo-colorscheme").use({
            --     theme = "boo"
            -- })
        end,
    },
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
    }
}
