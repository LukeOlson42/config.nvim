return {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',

    version = '*',
    opts = {
        keymap = {
            preset = 'super-tab',
            ['<C-space>'] = {},
            ['<C-e>'] = { 'hide' },

            ['<C-p>'] = { 'select_prev', 'fallback' },
            ['<C-n>'] = { 'select_next', 'fallback' },

            ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
            ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

            ['<Tab>'] = {
                function (cmp)
                    if cmp.snippet_active() then return cmp.accept()
                    else return cmp.select_and_accept() end
                end,
                'snippet_forward',
                'fallback',
            },
        },

        completion = {
            menu = { border = 'none' },
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
