return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = function(bufnr)
			-- Get the full file path of the current buffer
			local bufname = vim.api.nvim_buf_get_name(bufnr)

			-- 1. Exclude a specific directory (e.g., vendor folder or third-party code)
			if bufname:match("/home/ayush/.config/hypr") then
				return
			end

			-- 2. Exclude a specific file name (e.g., config.lua)
			if bufname:match("special_file%.lua$") then
				return
			end

			-- Default formatting options applied to all other files
			return {
				timeout_ms = 500,
				lsp_format = "fallback",
			}
		end,
	},
}
