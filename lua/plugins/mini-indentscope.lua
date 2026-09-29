return {
	"nvim-mini/mini.indentscope",
	version = false,
	event = "BufReadPre",
	config = function()
		require("mini.indentscope").setup({
			symbol = "│",
			options = { try_as_border = true },
		})

		-- Disable indentscope on dashboard/ui filetypes
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "alpha", "dashboard", "neo-tree", "lazy", "mason", "oil" },
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})
	end,
}
