return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'saghen/blink.cmp',
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },

    -- example using `opts` for defining servers
    opts = {
        servers = {
            lua_ls = {}
        }
    },
    config = function(_, _)
        local lspconfig = require('lspconfig')
        lspconfig.lua_ls.setup({})
    end
}
