return {
        'nvim-lualine/lualine.nvim',
        dependencies = {'nvim-tree/nvim-web-devicons'},
        config = function()
            local lualine = require('lualine')
            local simplegreen = require('lualine.themes.simple-green')
            local config = {
                options = {
                    icons_enabled = false,
                    theme = simplegreen,
                    component_separators = '|',
                    section_separators = '',
                    always_divide_middle = true,
                    globalstatus = false,
                    refresh = {
                        statusline = 100,
                    }
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = { 'branch' },
                    lualine_c = {'filename'},
                    lualine_x = {
                        'encoding',
                        'filetype',
                        {
                            'selectioncount',
                            fmt =
                            function(str)
                                local mode = vim.api.nvim_get_mode().mode
                                if str == '' then
                                    return str
                                else
                                    local plural = ''

                                    if mode == 'V' then
                                        local lines = tonumber(str)
                                        if lines > 1 then plural = 's' end
                                        return str .. ' line' .. plural
                                    elseif mode == 'v' then
                                        local chars = tonumber(str)
                                        if chars > 1 then plural = 's' end
                                        return str .. ' sel' .. plural
                                    end

                                    return 'Area: ' .. str -- default to visual block mode
                                end
                            end
                        },
                    },
                    lualine_y = {
                        'progress',
                    },
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_b = {'branch'},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                },
            }

            local function insert_component(component)
                table.insert(config.sections.lualine_x, 1, component)
            end

            insert_component({
                -- Lsp server name .
                function()
                    local clients = vim.lsp.get_clients({ bufnr = vim.api.nvim_get_current_buf() })
                    return clients[1].name
                end,
            })

            lualine.setup(config)
        end,
}
