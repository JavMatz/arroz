return {
    {
        'rebelot/kanagawa.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            if vim.fn.has("termguicolors") then
                vim.opt.termguicolors = true
            end
            require("kanagawa").setup({
                undercurl = false,
                dimInactive = true,
            })
            vim.cmd("colorscheme kanagawa-wave")
        end,
    },
    {
        'rose-pine/neovim',
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        config = function()
            if vim.fn.has("termguicolors") then
                vim.opt.termguicolors = true
            end
            require("rose-pine").setup({
                variant = 'moon',
                dim_nc_background = true
            })
            -- vim.cmd("colorscheme rose-pine")
        end,
    },
}
