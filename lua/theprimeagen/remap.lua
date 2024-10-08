vim.g.mapleader = ","
-- Replace the built-in file explorer with oil.nvim
vim.keymap.set("n", "<leader>rn", function() require("oil").open() end)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", function()
    local winheight = vim.api.nvim_win_get_height(0)
    vim.cmd('normal! ' .. math.floor(winheight / 4) .. 'jzz')
end, { noremap = true, silent = true })

vim.keymap.set("n", "<D-d>", function()
    local winheight = vim.api.nvim_win_get_height(0)
    vim.cmd('normal! ' .. math.floor(winheight / 4) .. 'jzz')
end, { noremap = true, silent = true })

vim.keymap.set("n", "<C-u>", function()
    local winheight = vim.api.nvim_win_get_height(0)
    vim.cmd('normal! ' .. math.floor(winheight / 4) .. 'kzz')
end, { noremap = true, silent = true })

vim.keymap.set("n", "<D-u>", function()
    local winheight = vim.api.nvim_win_get_height(0)
    vim.cmd('normal! ' .. math.floor(winheight / 4) .. 'kzz')
end, { noremap = true, silent = true })

-- vim.keymap.set("n", "j", "gj^", { noremap = true, silent = true })
-- vim.keymap.set("n", "k", "gk^", { noremap = true, silent = true })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");

-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")

-- end)

-- disabled keys
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Right>', '<Nop>', { noremap = true, silent = true })
-- set autoindent
-- Enable auto-indentation globally
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Additional indentation settings
vim.opt.tabstop = 4      -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4   -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true -- Use spaces instead of tabs
-- set true color
vim.opt.termguicolors = true

-- set cmd height to 0
vim.opt.cmdheight = 0

vim.api.nvim_set_keymap('n', '<C-i>', '<C-o>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-i>', '<C-o>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-o>', '<C-i>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-o>', '<C-i>zz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-l>', 'zl', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', 'zh', { noremap = true, silent = true })
vim.g.yankring_replace_n_pkey = '<m-p>'
vim.g.yankring_replace_n_nkey = '<m-n>'
vim.keymap.set('n', '<D-r>', '<C-r>', { noremap = true, silent = true })
