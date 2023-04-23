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
                dim_inactive = true,
                transparent_mode = true
            })
            vim.cmd("colorscheme gruvbox")
        end,
    }
}
