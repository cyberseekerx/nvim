return {
	"CRAG666/code_runner.nvim",
	event = "VeryLazy",
	dependencies = { "folke/snacks.nvim" },
	cmd = { "RunCode", "RunFile", "RunProject" },
	keys = {
		{ "<leader>r", ":RunCode<CR>", desc = "Run Code" },
	},
	opts = {
		-- Use "float" or custom floating terminal settings
		mode = "float",
		float = {
			-- Customize floating window dimensions if desired
			close_key = "<ESC>",
			border = "rounded",
			-- We can route the terminal execution using a custom callback or snacks terminal
		},
		filetype = {
			python = "python3 -u",
			c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
			lua = "lua",
		},
	},
}
