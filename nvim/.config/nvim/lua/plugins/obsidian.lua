return {
  "epwalsh/obsidian.nvim",
  opts = {
    workspaces = {
      {
        name = "work",
        path = "~/Documents/notes/Work",
      },
    },
    notes_subdir = "0 Inbox",
    new_notes_location = "notes_subdir",
    disable_frontmatter = true,
    templates = {
      subdir = "3 Resources/Extras/Templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M:%S",
    },
    picker = {
      -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
      name = "snacks.nvim",
    },
  },
}
