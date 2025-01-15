return {
    {
        'echasnovski/mini.nvim',
        version = '*',
        config = function()
            -- Mini.move setup
            require('mini.move').setup({
                mappings = {
                    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
                    -- This is literally all that I use this plugin for
                    down = '<S-j>',
                    up = '<S-k>',
                },

                -- Options which control moving behavior
                options = {
                    -- Automatically reindent selection during linewise vertical move
                    reindent_linewise = true,
                },
            })
        end,
    }
}
