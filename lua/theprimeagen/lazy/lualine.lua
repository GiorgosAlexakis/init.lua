return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local lualine = require('lualine')
        lualine.setup({
            options = {
                theme = 'dracula',
                component_separators = { left = '|', right = '|' },
                section_separators = { left = '|', right = '|' },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'diff', 'diagnostics' },
                lualine_c = {},
                lualine_x = { 'filetype' },
                lualine_y = {},
                lualine_z = { 'location' }
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = { 'diff', 'diagnostics' },
                lualine_c = {},
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        })
    end,
}
