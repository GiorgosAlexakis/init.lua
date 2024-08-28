return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        local actions = require('telescope.actions')
        local action_state = require('telescope.actions.state')
        local builtin = require('telescope.builtin')

        local actions = require('telescope.actions')
        local action_state = require('telescope.actions.state')

        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ["<Up>"] = false,
                        ["<Down>"] = false,
                        ["<Left>"] = false,
                        ["<Right>"] = false,
                        ["<C-j>"] = require('telescope.actions').move_selection_next,
                        ["<D-j>"] = require('telescope.actions').move_selection_next,
                        ["<C-k>"] = require('telescope.actions').move_selection_previous,
                        ["<D-k>"] = require('telescope.actions').move_selection_previous,
                    },
                    n = {
                        ["<C-j>"] = require('telescope.actions').move_selection_next,
                        ["<D-j>"] = require('telescope.actions').move_selection_next,
                        ["<C-k>"] = require('telescope.actions').move_selection_previous,
                        ["<D-k>"] = require('telescope.actions').move_selection_previous,
                    },
                },
                file_ignore_patterns = {
                    "go/tenets/.*",
                    "vendor/.*",
                    ".*/mocks/.*",
                    "mocks/.*",
                    "%.pb%.go",
                },
            },
            layout_config = {
                vertical = { width = 0.99 }
            },
            file_sorter = require('telescope.sorters').get_fzy_sorter,
            generic_sorter = require('telescope.sorters').get_fzy_sorter,
            pickers = {
                find_files = {
                    theme = "ivy",
                },
                git_files = {
                    theme = "ivy",
                },
                oldfiles = {
                    theme = "ivy",
                },
                git_status = {
                    theme = "ivy",
                },
                git_commits = {
                    theme = "ivy",
                },
                git_branches = {
                    theme = "ivy",
                },
                harpoon_files = {
                    theme = "ivy",
                },
                lsp_references = {
                    theme = "ivy",
                },
                lsp_document_symbols = {
                    theme = "ivy",
                },
                lsp_type_definitions = {
                    theme = "ivy",
                },
                lsp_implementations = {
                    theme = "ivy",
                },
                lsp_outgoing_calls = {
                    theme = "ivy",
                },
                diagnostics = {
                    theme = "ivy",
                },
                marks = {
                    theme = "ivy",
                },
                live_grep = {
                    theme = "ivy",
                },
                grep_string = {
                    theme = "ivy",
                },
            },
        })

        local builtin = require('telescope.builtin')
        ----------- Searching files ------------
        vim.keymap.set('n', '<leader>fh', builtin.oldfiles, { noremap = true, silent = true })
        -- find (any) file
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { noremap = true, silent = true })
        -- find a (git) file
        vim.keymap.set('n', '<C-p>', builtin.git_files, { noremap = true, silent = true })
        vim.keymap.set('n', '<D-p>', builtin.git_files, { noremap = true, silent = true })
        -----------  Searching code ------------
        -- find (any) symbol
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, { noremap = true, silent = true })
        -- find (any) word
        vim.keymap.set('n', '<leader>fw', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        -- view incoming/ outgoing calls
        vim.keymap.set('n', 'go', vim.lsp.buf.outgoing_calls, { noremap = true, silent = true })
        -- resume
        vim.keymap.set('n', '<leader>vp', builtin.resume, { noremap = true, silent = true })
        -- list document symbols
        vim.api.nvim_set_keymap('n', 'gs', ':Telescope lsp_document_symbols<CR>', { noremap = true, silent = true })
        -- list workspace symbols
        vim.api.nvim_set_keymap('n', 'gS', ':Telescope lsp_dynamic_workspace_symbols<CR>',
            { noremap = true, silent = true })
        -- list workspace methods
        vim.api.nvim_set_keymap('n', 'gm', ':Telescope lsp_document_symbols symbols=method<CR>',
            { noremap = true, silent = true })
        -- list workspace functions
        vim.api.nvim_set_keymap('n', 'gf', ':Telescope lsp_document_symbols symbols=function<CR>',
            { noremap = true, silent = true })
        -- list workspace structs (sTrucT)
        vim.api.nvim_set_keymap('n', 'gc', ':Telescope lsp_document_symbols symbols=struct<CR>',
            { noremap = true, silent = true })
        -- list workspace variables
        vim.api.nvim_set_keymap('n', 'gv', ':Telescope lsp_document_symbols symbols=variable<CR>',
            { noremap = true, silent = true })
        -- view type definitions
        vim.api.nvim_set_keymap('n', 'gD', ':Telescope lsp_type_definitions<CR>', { noremap = true, silent = true })
        -- view references
        vim.api.nvim_set_keymap('n', 'gr', ':Telescope lsp_references<CR>', { noremap = true, silent = true })
        -- view implementations
        vim.api.nvim_set_keymap('n', 'gi', ':Telescope lsp_implementations<CR>', { noremap = true, silent = true })
        -- view diagnostics, filter by severity ERROR
        vim.api.nvim_set_keymap('n', '<leader>vd', ':Telescope diagnostics severity=ERROR<CR>',
            { noremap = true, silent = true })
        -- view git changes
        vim.api.nvim_set_keymap('n', '<leader>vs', ':Telescope git_status<CR>', { noremap = true, silent = true })
        -- view git commits
        vim.api.nvim_set_keymap('n', '<leader>vc', ':Telescope git_commits<CR>', { noremap = true, silent = true })
        -- view git branches
        vim.api.nvim_set_keymap('n', '<leader>vb', ':Telescope git_branches<CR>', { noremap = true, silent = true })
        -- view marks
        vim.api.nvim_set_keymap('n', '<leader>vm', ':Telescope marks<CR>', { noremap = true, silent = true })
        -----------    Not used    ------------
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}
