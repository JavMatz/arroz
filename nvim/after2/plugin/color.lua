if vim.fn.has("termguicolors") then
    vim.opt.termguicolors = true
end

vim.g.modus_yellow_comments = 1
vim.g.modus_green_strings  = 1
vim.g.modus_cursorline_intense = 1
vim.cmd('colorscheme modus-vivendi')
vim.api.nvim_set_hl(0, 'DiagnosticError', {bg="#000000", fg="#ef8b50"})
