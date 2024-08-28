return {
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({})
            vim.api.nvim_set_keymap(
              'n',
              '<leader>tt',
              "<cmd>Trouble diagnostics toggle filter = { severity=vim.diagnostic.severity.ERROR }<cr>",
              {silent = true, noremap = true}
            )

            vim.keymap.set("n", "]t", function()
                require("trouble").next({skip_groups = true, jump = true});
            end)

            vim.keymap.set("n", "[t", function()
                require("trouble").prev({skip_groups = true, jump = true});
            end)

        end
    },
}
