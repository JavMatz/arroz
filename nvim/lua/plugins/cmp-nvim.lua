return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            {
                "hrsh7th/cmp-cmdline",
                config = function ()
                    local cmp = require("cmp")

                    cmp.setup.cmdline({'/', '?', ':'})
                end
            },
            {
                "hrsh7th/cmp-path"
            },
            {
                "hrsh7th/cmp-buffer"
            },
            {
                "hrsh7th/cmp-nvim-lsp"
            },
            {
                "L3MON4D3/LuaSnip",
                version = "<CurrentMajor>.*",
                build = "make install_jsregexp"
            },
            {
                "rafamadriz/friendly-snippets"
            },
        },
        config = function()
            local cmp = require("cmp")
            local s = {}
            local select_opts = { behavior = cmp.SelectBehavior.Select }

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered()
                },
                mapping = cmp.mapping.preset.insert({
                    -- Confirm selection
                    ['<CR>'] = cmp.mapping.confirm({ select = false }),
                    ['<C-y>'] = cmp.mapping.confirm({ select = false }),
                    -- Scroll up and down in completion documentation
                    ['<C-f>'] = cmp.mapping.scroll_docs(5),
                    ['<C-u>'] = cmp.mapping.scroll_docs( -5),
                    -- Navigate items on the list
                    ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
                    ['<Down>'] = cmp.mapping.select_next_item(select_opts),
                    ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
                    ['<C-n>'] = cmp.mapping.select_next_item(select_opts),
                    -- Toggle completion
                    ['<C-e>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.abort()
                        else
                            cmp.complete()
                        end
                    end),
                    -- when menu is visible, navigate to next item
                    -- when line is empty, insert a tab character
                    -- else, activate completion
                    ['<Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item(select_opts)
                        elseif s.check_back_space() then
                            fallback()
                        else
                            cmp.complete()
                        end
                    end, { 'i', 's' }),
                    -- when menu is visible, navigate to previous item on list
                    -- else, revert to default behavior
                    ['<S-Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item(select_opts)
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                }),
                sources = cmp.config.sources({
                    { name = 'path' },
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    {
                        { name = 'buffer' }
                    },
                }),
            })

            s.check_back_space = function()
                local col = vim.fn.col('.') - 1
                if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                    return true
                else
                    return false
                end
            end
        end
    }
}
