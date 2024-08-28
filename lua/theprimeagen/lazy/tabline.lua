return {
    {
        'crispgm/nvim-tabline',
        config = function()
            local tabline = require('tabline')
            tabline.setup({
                show_modify = true,     -- show buffer modification indicator
                show_index = false,
                show_icon = false,      -- show file extension icon
                fnamemodify = ':t',     -- file name modifier string
                modify_indicator = '[+]', -- modify indicator
                no_name = 'No name',    -- no name buffer name
                inactive_tab_max_length = 0 -- max length of inactive tab titles, 0 to ignore
            })
            vim.opt.showtabline = 2
        end,
    }
}
