return {
    {
        'rose-pine/neovim',
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        config = function()
            require("rose-pine").setup({
              variant = 'moon',
              dark_variant = 'moon',
disable_background = true,
	disable_float_background = true,
            })
            vim.cmd("colorscheme rose-pine")
        end
    },
    {
        'catppuccin/nvim',
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({ })
            -- vim.cmd("colorscheme catppuccin")
        end
    }, {
        'Mofiqul/vscode.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require("vscode").setup({transparent = false})
            -- require("vscode").load()
        end
    }
}
