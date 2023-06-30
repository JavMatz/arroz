return {
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{                   -- Optional
				'williamboman/mason.nvim',
				build = ":MasonUpdate",
			},
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-path' },
			{ 'L3MON4D3/LuaSnip' }, -- Required
		},
		config = function()
			local lsp = require("lsp-zero").preset({})

			lsp.on_attach(function(_, bufnr)
				lsp.default_keymaps({ buffer = bufnr })
			end)
			require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
			lsp.setup()

			local cmp = require("cmp")

			cmp.setup({
				sources = {
					{ name = 'path' },
				}
			})
		end,
		event = {
			'BufEnter *.dart',
			'BufEnter *.lua',
			'BufEnter *.rs',
			'BufEnter *.js',
			'BufEnter *.jsx',
			'BufEnter *.html',
			'BufEnter *.css',
			'BufEnter *.scss',
		},
		ft = {
			"dart",
			"rust",
			"lua",
			"sh",
			"javascript",
			"javascriptreact",
			"javascript.txs",
			"html",
			"css",
			"scss",
			"less",
		},
	}
}
