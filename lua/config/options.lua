---@info don't load colorscheme here
---first remove the vim.cmd(colorscheme kanagawa) in kanagawa.lua in plugins dir
--vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 8 -- Amount to indent with << and >>
vim.opt.tabstop = 8 -- How many spaces are shown per Tab
vim.opt.softtabstop = 8 -- How many spaces are applied when pressing Tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true -- Keep identation from previous line

-- Enable break indent
vim.opt.breakindent = true

-- Always show relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Show line under cursor
vim.opt.cursorline = true

-- Store undos between sessions
vim.opt.undofile = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- Minimal number of screen lines to keep above and below the cursor.
--
--
--
--
vim.opt.scrolloff = 5
vim.opt.cmdheight = 0 -- shows errors in cmd line
vim.o.signcolumn = "yes"
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", {}),
	desc = "Hightlight selection on yank",
	pattern = "*",
	callback = function()
		vim.hl.hl_op({ higroup = "IncSearch", timeout = 100 })
	end,
})
