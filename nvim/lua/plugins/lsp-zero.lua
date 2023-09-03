return {
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{
				'williamboman/mason.nvim',
				build = ":MasonUpdate",
			},
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-path' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-cmdline' },
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
					{ name = 'nvim_lsp' },
					{ name = 'luasnip', keyword_length = 2 },
					{ name = 'buffer',  keyword_length = 3 },
					{ name = 'path' },
					-- { name = 'cmdline' },
				},
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end
				}
			})
			-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline({ '/', '?' }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = 'buffer' }
				}
			})

			-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline(':', {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = 'path' }
				}, {
					{ name = 'cmdline' }
				})
			})
		end,

		event = {
			'BufEnter *.dart',
			'BufEnter *.py',
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
			"python",
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
