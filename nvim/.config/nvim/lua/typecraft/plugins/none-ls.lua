local to = { timeout = 10000 }
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.rubocop.with(to),
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.rubocop.with(to),
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		vim.lsp.buf.format({ timeout_ms = 10000 })
	end,
}
