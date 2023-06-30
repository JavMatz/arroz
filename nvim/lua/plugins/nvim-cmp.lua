return {
	'hrsh7th/nvim-cmp',
	dependencies = { { 'hrsh7th/cmp-path' } },
	config = function()
		local cmp = require("cmp")
		local cmp_select_opts = { behavior = cmp.SelectBehavior.Select }

		cmp.setup({
			sources = {
				{ name = 'path' },
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered()
			},
			mapping = {
				['<C-y>'] = cmp.mapping.confirm({ select = true }),
				['<C-e>'] = cmp.mapping.abort(),
				['<C-u>'] = cmp.mapping.scroll_docs(-4),
				['<C-d>'] = cmp.mapping.scroll_docs(4),
				['<Up>'] = cmp.mapping.select_prev_item(cmp_select_opts),
				['<Down>'] = cmp.mapping.select_next_item(cmp_select_opts),
				['<C-p>'] = cmp.mapping(function()
					if cmp.visible() then
						cmp.select_prev_item(cmp_select_opts)
					else
						cmp.complete()
					end
				end),
				['<C-n>'] = cmp.mapping(function()
					if cmp.visible() then
						cmp.select_next_item(cmp_select_opts)
					else
						cmp.complete()
					end
				end)
			},
		})
	end
}
