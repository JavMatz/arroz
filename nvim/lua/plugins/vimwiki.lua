return {
    {
        "vimwiki/vimwiki",
        lazy = true,
        -- config = function()
        --     vim.cmd([[
        --         let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
        --         let g:vimwiki_global_ext = 0
        --     ]])
        -- end,
        event = {
            "BufEnter *.wiki"
        },
        keys = {
            "<leader>ww"
        }
    }
}
