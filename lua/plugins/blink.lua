return {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',

    version = '*',
    opts = {
        keymap = {
            preset = 'default',

            ['<C-space>'] = {},
            ['<C-e>'] = {},
            ['<C-c>'] = { 'cancel', 'fallback' },

            ['Tab'] = {},
            ['<S-Tab>'] = {},
        },

        completion = {
            menu = {
                border = 'none',
                draw = {
                    treesitter = { 'lsp' },
                },
            },
            documentation = {
                window = {
                    border = 'single'
                },

                auto_show = true,
                auto_show_delay_ms = 100,
            },
        },

        signature = { window = { border = 'single' } },

        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
            cmdline = {},
        },
    },

    opts_extend = { "sources.default" },
}
