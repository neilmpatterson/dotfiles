-- Silent keymap option
local options = { silent = true }

return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")
			local actions = require("telescope.actions")

			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				defaults = {

					prompt_prefix = " ",
					selection_caret = " ",
					path_display = { "smart" },
					file_ignore_patterns = { ".git/", "node_modules" },

					mappings = {
						i = {
							["<Down>"] = actions.cycle_history_next,
							["<Up>"] = actions.cycle_history_prev,
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
						},
					},
				},
			})
			vim.keymap.set("n", "<leader>ff", builtin.find_files, options)
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, options)
			vim.keymap.set('n', '<leader>km', ':Telescope keymaps<CR>', {})
			vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", options)
			vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, options)

			require("telescope").load_extension("ui-select")
		end,
	},
}
