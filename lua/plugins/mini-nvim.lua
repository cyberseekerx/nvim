return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		-- Core & Text Objects / Surroundings
		require("mini.ai").setup()
		require("mini.align").setup()
		require("mini.bracketed").setup()
		require("mini.comment").setup()
		require("mini.move").setup()
		require("mini.operators").setup()
		require("mini.pairs").setup()
		require("mini.splitjoin").setup()
		require("mini.surround").setup({})

		---- Navigation & File Management
		--require("mini.files").setup()
		require("mini.jump").setup({
			mappings = {
				forward = "f",
				backward = "F",
				forward_till = "t",
				backward_till = "T",
				repeat_jump = ";", -- or keep default repeat behavior
			},
			delay = {
				highlight = 250, -- delay before highlighting potential targets
				idle_stop = 10000,
			},
		})
		-- require("mini.jump2d").setup()
		--require("mini.pick").setup()
		-- require("mini.visits").setup()

		---- Appearance & Visual Enhancements
		---- require("mini.animate").setup()
		---- require("mini.clues").setup()
		--require("mini.colors").setup()
		--require("mini.cursorword").setup()
		--require("mini.hipatterns").setup()
		require("mini.indentscope").setup()
		--require("mini.map").setup()
		-- require("mini.notify").setup()
		require("mini.icons").setup()
		--require("mini.statusline").setup()
		--require("mini.tabline").setup()
		--require("mini.trailspace").setup()

		---- Workflow, Utilities & Git
		--require("mini.bufremove").setup()
		-- require("mini.completion").setup()
		--require("mini.diff").setup()
		--require("mini.git").setup()
		--require("mini.misc").setup()
		require("mini.sessions").setup()
		---- require("mini.starter").setup()
	end,
}
