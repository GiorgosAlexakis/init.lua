return {
    'rmagatti/auto-session',
    config = function()
        local auto_session = require('auto-session')
        auto_session.setup({
            suppressed_dirs = { '~/', '~/Downloads', '/' },
            lazy_support = true,
            auto_save = true,
            auto_restore = true,
            auto_create = true,
        })
    end,
}
