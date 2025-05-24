-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- buffer navigation
keymap.set("n", "<leader>bj", ":bnext<cr>", { desc = "Move to next buffer" })
keymap.set("n", "<leader>bk", ":bprevious<cr>", { desc = "Move to prefious buffer" })

-- obsidian --
--
-- >>> oo # from shell, navigate to vault (optional)
--
-- # NEW NOTE
-- >>> on "Note Name" # call my "obsidian new note" shell script (~/bin/on)
-- >>>
-- >>> ))) <leader>on # inside vim now, format note as template
-- >>> ))) # add tag, e.g. fact / blog / video / etc..
-- >>> ))) # add hubs, e.g. [[python]], [[machine-learning]], etc...
-- >>> ))) <leader>of # format title
--
-- # END OF DAY/WEEK REVIEW
-- >>> or # review notes in +Inbox
-- >>>
-- >>> ))) <leader>ok # inside vim now, move to +Outbox
-- >>> ))) <leader>odd # or delete
-- >>>
-- >>> og # organize saved notes from +Outbox into Atlas/Notes/[tag] folders
--
-- navigate to vault
keymap.set(
	"n",
	"<leader>oo",
	":cd ~/Documents/notes/Work<cr>",
	{ desc = "Navigate to Obsidan Vault" }
)
-- convert note to template and remove leading white space
keymap.set(
	"n",
	"<leader>on",
	":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>",
	{ desc = "Apply the note template to the md file" }
)
-- strip date from note title and replace dashes with spaces
-- must have cursor on title
keymap.set(
	"n",
	"<leader>of",
	":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>",
	{ desc = "Format the title of the Note" }
)
--
-- search for files in full vault
keymap.set(
	"n",
	"<leader>os",
	':Telescope find_files search_dirs={"~/Documents/notes/Work"}<cr>',
	{ desc = "Search for files in obsidian vault" }
)
keymap.set(
	"n",
	"<leader>oz",
	':Telescope live_grep search_dirs={"~/Documents/notes/Work"}<cr>',
	{ desc = "Grep search for files in obsidain vault" }
)
--
-- for review workflow
-- move file in current buffer to +Outbox folder
keymap.set(
	"n",
	"<leader>ok",
	":!mv '%:p' ~/Documents/neil/Work/2\\ Areas<cr>:bd<cr>",
	{ desc = "Move file from obsidian inbox to the outbox" }
)
-- delete file in current buffer
keymap.set("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>", { desc = "Obsidian delete note during review process" })
