-- Open file manager
-- vim.keymap.set('n', "<leader>dd", "<cmd>Lexplore %p:h<CR>")
vim.keymap.set('n', "<leader>da", "<cmd>Explore<CR>")

-- Beter ESC
vim.keymap.set('i', "kj", "<ESC>")

-- Spellcheck english and spanish
vim.keymap.set('n', "<leader>o", ":setlocal spell! spelllang=en_us<CR>", {})
vim.keymap.set('n', "<leader>ñ", ":setlocal spell! spelllang=es_mx<CR>", {})

-- Tabs
vim.keymap.set('n', "<c-w>t", ":tabnew<CR>", {})

-- Kitty
vim.keymap.set('n', "<leader>gd",
	":!kitty @ launch --type=tab --title=diff --cwd current --no-response git difftool --no-symlinks --dir-diff %:p <CR><CR>",
	{ silent = true })
