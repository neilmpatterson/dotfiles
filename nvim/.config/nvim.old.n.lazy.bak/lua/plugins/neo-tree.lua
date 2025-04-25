return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Make hidden files visible by default
        hide_dotfiles = false, -- Do not hide files starting with `.`
        hide_gitignored = false, -- Do not hide gitignored files (optional)
      },
    },
  },
}
