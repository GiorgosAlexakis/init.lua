vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"
vim.opt.autoread = true

-- set wrap to on
vim.opt.wrap = true
-- Enable highlighting of the current line
vim.opt.cursorline = true
-- enable vertical highlighting
vim.opt.cursorcolumn = false

vim.opt.termguicolors = true
vim.g.neovide_show_border = false

-- Delay screen updates when running macros for smoother performance
vim.opt.lazyredraw = false

-- Assume the terminal is fast, so Neovim can optimize screen updates
vim.opt.ttyfast = true
vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_cursor_trail_size = 0.01
vim.o.guifont = "Fira Code:h17" -- text below applies for VimScript
vim.g.neovide_scroll_animation_length = 0.3
local default_path = vim.fn.expand("~/connectly-backend")
vim.api.nvim_set_current_dir(default_path)
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_position_animation_length = 0

vim.api.nvim_create_autocmd("User", {
  pattern = "TelescopePreviewerLoaded",
  callback = function()
    vim.wo.wrap = true
  end,
})
