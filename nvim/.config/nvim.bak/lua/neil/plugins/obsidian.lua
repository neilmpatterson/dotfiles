return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("obsidian").setup({
			workspaces = {
				{
					name = "finalsite",
					path = "~/vaults/finalsite",
				},
				{
					name = "work",
					path = "/Users/neil.patterson/Library/Mobile Documents/iCloud~md~obsidian/Documents/Work",
				},
				{
					name = "personal",
					path = "/Users/neil.patterson/Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal",
				},
			},
			notes_subdir = "+Inbox",
			new_notes_location = "notes_subdir",

			disable_frontmatter = true,
			templates = {
				subdir = "Atlas/Extras/Templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M:%S",
			},
			mappings = {
				-- overrides the 'gf' mapping to work on markdown/wiki links within your vault
				["gf"] = {
					action = function()
						return require("obsidian").util.gf_passthrough()
					end,
					opts = { noremap = false, expr = true, buffer = true },
				},
			},
			completion = {
				nvim_cmp = true,
				min_chars = 2,
			},
		})
	end,
}
