return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "nvim-neotest/neotest-plenary",
        "nvim-neotest/neotest-vim-test",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "vim-test/vim-test",
    },
    config = function()
        vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", { noremap = true })
        vim.keymap.set("n", "<leader>T", ":TestFile<CR>", { noremap = true })
        vim.g['test#strategy'] = 'neovim'
    end,
}
