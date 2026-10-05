return {
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-orgmode/telescope-orgmode.nvim",
			{ "nvim-orgmode/org-bullets.nvim", opts = {} },
			-- Removed opts = {} so lazy doesn't try to call require("org-modern").setup()
			{ "danilshvalov/org-modern.nvim" },
		},
		config = function()
			local Menu = require("org-modern.menu")

			require("orgmode").setup({
				org_agenda_files = "~/Notes/**/*",
				org_default_notes_file = "~/Notes/refile.org",
				ui = {
					menu = {
						handler = function(data)
							Menu:new({
								window = {
									margin = { 1, 0, 1, 0 },
									padding = { 0, 1, 0, 1 },
									title_pos = "center",
									border = "single",
									zindex = 1000,
								},
								icons = {
									separator = "➜",
								},
							}):open(data)
						end,
					},
				},
			})

			-- Experimental LSP support
			vim.lsp.enable("org")
		end,
	},
	{
		"Saghen/blink.cmp",
		opts = {},
	},
}
