return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
          require("tokyonight").setup({
            style = "night",
            light_style = "day",
            transparent = true
          })
          vim.cmd[[ colorscheme tokyonight ]]
        end
    },
    {
        'Mofiqul/vscode.nvim',
        lazy = false,
        priority = 1000,
        config = function()
          require("vscode").setup({
            transparent = false
          })
          -- require("vscode").load()
        end
    },
}
