return {
	"gelguy/wilder.nvim",
	config = function()
		local wilder = require("wilder")

		wilder.set_option(
			"renderer",
			wilder.popupmenu_renderer(wilder.popupmenu_border_theme({
				highlighter = wilder.basic_highlighter(),
				min_width = "100%", -- minimum height of the popupmenu, can also be a number
				min_height = "50%", -- to set a fixed height, set max_height to the same value
				reverse = 0,
				-- 'single', 'double', 'rounded' or 'solid'
				-- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
				border = "rounded",
			}))
		)

		wilder.setup({
			modes = { ":", "/", "?" },
			enable_cmdline_enter = 0,
		})
	end,
}
