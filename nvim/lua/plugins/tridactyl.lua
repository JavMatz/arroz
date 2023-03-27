return {
    {
        'tridactyl/vim-tridactyl';
        lazy = true,
        event = 'BufEnter tridactylrc',
        config = function()
            vim.cmd('set filetype=tridactyl')
        end
    }
}
