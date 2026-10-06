return {
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-orgmode/telescope-orgmode.nvim",
			{ "nvim-orgmode/org-bullets.nvim", opts = {} },
			{ "danilshvalov/org-modern.nvim" },
		},
		config = function()
			local Menu = require("org-modern.menu")

			require("orgmode").setup({
				org_agenda_files = "~/Notes/**/*",
				org_default_notes_file = "~/Notes/refile.org",

				-- Capture templates to keep your files organized cleanly
				org_capture_templates = {
					t = {
						description = "Task",
						template = "* TODO %?\n  DEADLINE: %t",
						target = "~/Notes/tasks.org",
					},
					h = {
						description = "Habit",
						template = "* TODO %?\n  SCHEDULED: <%<%Y-%m-%d %a> +1d>\n  :PROPERTIES:\n  :STYLE: habit\n  :END:",
						target = "~/Notes/habits.org",
					},
					w = {
						description = "study Task",
						template = "%?\n  SCHEDULED: %t",
						target = "~/Notes/study.org",
					},
				},

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

			-- Load telescope-orgmode extension if not already loaded elsewhere
			pcall(require("telescope").load_extension, "orgmode")

			-- Experimental LSP support
			vim.lsp.enable("org")
		end,
	},
	{
		"Saghen/blink.cmp",
		opts = {},
	},
}
