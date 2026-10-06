require("config.lazy")
-- Automatically check and update plugins on startup in the background
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("lazy").sync({ show = false })
	end,
})
