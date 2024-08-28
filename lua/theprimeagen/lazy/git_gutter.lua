return {
    {
        "airblade/vim-gitgutter",
        config = function()
            function GitGutterNextHunkCycle()
                local current_line = vim.fn.line('.')
                vim.cmd('silent! GitGutterNextHunk')

                -- Check if the current line is the same after attempting to move to the next hunk
                if vim.fn.line('.') == current_line then
                    vim.cmd('1') -- Go to the first line
                    vim.cmd('GitGutterNextHunk')
                end
            end

            function GitGutterPrevHunkCycle()
                local current_line = vim.fn.line('.')
                vim.cmd('silent! GitGutterPrevHunk')

                -- Check if the current line is the same after attempting to move to the previous hunk
                if vim.fn.line('.') == current_line then
                    vim.cmd('$') -- Go to the last line
                    vim.cmd('GitGutterPrevHunk')
                end
            end

            -- Replace GitGutterPrevHunk with the newly created GitGutterPrevHunkCycle
            vim.api.nvim_set_keymap('n', '[c', ':lua GitGutterPrevHunkCycle()<CR>:pclose<CR>:GitGutterPreviewHunk<CR>',
                { noremap = true, silent = true })
            -- Replace GitGutterNextHunk with the newly created GitGutterNextHunkCycle
            vim.api.nvim_set_keymap('n', ']c', ':lua GitGutterNextHunkCycle()<CR>:pclose<CR>:GitGutterPreviewHunk<CR>',
                { noremap = true, silent = true })
            vim.cmd('GitGutterEnable')
            vim.cmd('GitGutterSignsEnable')
            vim.cmd('GitGutterLineNrHighlightsEnable')
        end,
        -- Lua function to go to the next hunk across all buffers


    }
}
