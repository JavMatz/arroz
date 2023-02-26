local nnoremap = require("config.keymap").nnoremap

local silent = { silent = true }

return {
    {
        'ThePrimeagen/harpoon',
        lazy = true,
        dependencies = { { 'nvim-lua/plenary.nvim'} },
        config = function()
            nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
            nnoremap("<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)
        end,
        keys = {{"<leader>a"}, {"<C-e>"}}
    }
}
