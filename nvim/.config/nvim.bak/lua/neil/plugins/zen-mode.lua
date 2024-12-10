return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			backdrop = 0.65, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
			width = 100, -- width of the Zen window
			height = 1, -- height of the Zen window
			options = {
				signcolumn = "no", -- disable signcolumn
				number = false, -- disable number column
				relativenumber = false, -- disable relative numbers
				cursorline = true, -- disable cursorline
				cursorcolumn = false, -- disable cursor column
				foldcolumn = "0", -- disable fold column
				list = false, -- disable whitespace characters
			},
		},
		plugins = {
			tmux = { enabled = true }, -- disables the tmux statusline
		}
	},
	dependencies = { "junegunn/limelight.vim" },
}
