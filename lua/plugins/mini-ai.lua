return {
	{
		"nvim-mini/mini.ai",
		version = false, -- Use main branch for latest updates, or version = "*" for stable
		config = function()
			require("mini.ai").setup()
		end,
	},
}
