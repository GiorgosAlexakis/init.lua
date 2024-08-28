return {
    "rest-nvim/rest.nvim",
    dependencies = { "luarocks/luarocks" },
    config = function()
        require("rest-nvim").setup({
            response = {
                hooks = {
                    decode_url = true, -- Decode URL segments in the response UI
                    format = true,     -- Format the response body
                },
            },
        })
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "json",
            callback = function(ev)
                vim.bo[ev.buf].formatprg = "jq"
            end,
        })
        -- set :Rest run as rr
        vim.api.nvim_set_keymap("n", "<leader>rr", "<cmd>Rest run<cr>", { noremap = true, silent = true })
    end,
}
