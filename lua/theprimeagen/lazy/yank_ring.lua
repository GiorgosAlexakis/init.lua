return {
    "vim-scripts/YankRing.vim",
    config = function()
        vim.g.yankring_window_height = 10
        vim.api.nvim_set_keymap('n', '<leader>c', ':YRShow<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>cc', ':YRClear<CR>', { noremap = true, silent = true })
    end
}
