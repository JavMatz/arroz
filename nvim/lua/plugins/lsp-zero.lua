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
      { 'hrsh7th/nvim-cmp' },  -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-cmdline' },
      {
        'L3MON4D3/LuaSnip',
        version = "2.*",
        build = "make install_jsregexp",
        config = function()
          require('luasnip').filetype_extend("javascript", { "javascriptreact" })
          require('luasnip').filetype_extend("javascriptreact", { "html" })
          require('luasnip').filetype_extend("javascript", { "html" })
        end
      }, -- Required
      { "saadparwaiz1/cmp_luasnip" },
      { "rafamadriz/friendly-snippets" }
    },
    config = function()
      local lsp_zero = require("lsp-zero").preset({})

      lsp_zero.on_attach(function(_, bufnr)
        lsp_zero.default_keymaps({
          buffer = bufnr,
          exclude = {"<F3>"}
        })
      end)

      require('lspconfig').lua_ls.setup(lsp_zero.nvim_lua_ls())

      require 'lspconfig'.dartls.setup {
        cmd = { "dart", "language-server", "--protocol=lsp" },
      }

      lsp_zero.setup()

      local cmp = require("cmp")
      local cmp_action = require("lsp-zero").cmp_action()

      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip', keyword_length = 2 },
          { name = 'buffer',  keyword_length = 3 },
          { name = 'path' },
          { name = 'cmdline' },
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end
        },
        mapping = {
          ['<Tab>'] = cmp_action.tab_complete(),
          ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
          ['<C-f>'] = cmp_action.luasnip_jump_forward(),
          ['<C-b>'] = cmp_action.luasnip_jump_backward(),
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
  }
}
