return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		-- New setup structure (no more require("nvim-treesitter.configs"))
		require("nvim-treesitter").setup({})

		-- Install parsers using the new API
		require("nvim-treesitter").install({
			"c",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"html",
			"markdown",
			"markdown_inline",
			"python",
		})
	end,
}
