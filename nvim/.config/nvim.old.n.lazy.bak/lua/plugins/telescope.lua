return {
  "folke/telescope.nvim",
  opts = {
    pickers = {
      find_files = {
        hidden = true,
      },
      live_grep = {
        additional_args = function()
          return { "--hidden", "--glob", "!**/.git/*" }
        end,
      },
      grep_string = {
        additional_args = function()
          return { "--hidden", "--glob", "!**/.git/*" }
        end,
      },
    },
  },
}
