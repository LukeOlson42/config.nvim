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

        if vim.fn.executable("lua-language-server") == 1 then
            lspconfig.lua_ls.setup({})
        end

        if vim.fn.executable("ccls") == 1 then
            lspconfig.ccls.setup({})
        end

        if vim.fn.executable("ocamllsp") == 1 then
            lspconfig.ocamllsp.setup({})
        end
    end
}
