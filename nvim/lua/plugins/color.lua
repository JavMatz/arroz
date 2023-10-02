return {
    {
        'catppuccin/nvim',
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                background = "mocha"
            })
            vim.cmd("colorscheme catppuccin")
        end
    }, {
        'Mofiqul/vscode.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require("vscode").setup({transparent = false})
            -- require("vscode").load()
        end
    }, {
        'Mofiqul/adwaita.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.adwaita_darker = true
            vim.g.adwaita_disable_cursorline = false
            vim.g.adwaita_transparent = true
            -- vim.cmd("colorscheme adwaita")
        end
    }
}
