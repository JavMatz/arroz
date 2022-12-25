local nmap = require('erick.keymap').nmap
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()

nmap('<leader>fmt', ":LspZeroFormat<CR>")
