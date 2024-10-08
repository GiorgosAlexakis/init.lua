return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({
            settings = {
                save_on_toggle = true,
                save_on_change = true,
            },
            menu = {
                width = vim.api.nvim_win_get_width(0),
            },
        })

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-l>", function() harpoon:list():next() end)
        vim.keymap.set("n", "<D-l>", function() harpoon.list():prev() end)
        vim.keymap.set("n", "<C-h>", function() harpoon:list():prev() end, { noremap = true })
        vim.keymap.set("n", "<D-h>", function() harpoon:list():prev() end, { noremap = true })
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<D-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    end,
}
