return {
	"ahmedkhalf/project.nvim",
	init = function()
		require("project_nvim").setup({
			detection_methods = { "pattern" }, -- Removed "lsp" from the list
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		})
	end,
}
