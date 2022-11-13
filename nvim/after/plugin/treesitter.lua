require'nvim-treesitter.configs'.setup {
   ensure_installed = {'lua','javascript', 'html', 'css', 'dart', 'python', 'bash'},
   sync_install = true,
   auto_install = true,
   highlight = {
       enable = true,
       additional_vim_regex_highlighting = false
   },
   incremental_selection = {
       enable = true,
       keymaps = {
           init_selection = '<CR>',
           scope_incremental = '<CR>',
           node_incremental = '<TAB>',
           node_decremental = '<S-TAB>',
       }
   }
}

-- vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
--   group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
--   callback = function()
--     vim.opt.foldmethod     = 'expr'
--     vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
--   end
-- })
