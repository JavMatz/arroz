return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim'},
    config = function()
        local nnoremap = require('config.keymap').nnoremap
        local builtin = require('telescope.builtin')

        nnoremap('<leader>ff', builtin.find_files, {})
        nnoremap('<leader>fg', builtin.live_grep, {})
        nnoremap('<leader>fb', builtin.buffers, {})
        nnoremap('<leader>fh', builtin.help_tags, {})
    end
}
