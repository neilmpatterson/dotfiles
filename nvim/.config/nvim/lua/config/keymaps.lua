-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
--keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- show alpha dashboard
--keymap.set("n", "<leader>db", ":Alpha<CR>", { desc = "Show the Alpha Dashboard" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- buffer navigation
keymap.set("n", "<leader>n", ":bnext<cr>", { desc = "Move to next buffer" })
keymap.set("n", "<leader>p", ":bprevious<cr>", { desc = "Move to prefious buffer" })

-- show alpha dashboard
keymap.set("n", "<leader>uu", ":Alpha<CR>", { desc = "Show the Alpha Dashboard" })

-- telescope resume
keymap.set(
  "n",
  "<leader>fx",
  require("telescope.builtin").resume,
  { desc = "resume the last telescope", noremap = true, silent = true }
)
