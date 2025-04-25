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
vim.keymap.set(
	"n",
	"<leader>oo",
	":cd /Users/neil.patterson/library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Work<cr>",
	{ desc = "Navigate to Obsidan Vault" }
)
-- convert note to template and remove leading white space
vim.keymap.set(
	"n", 
	"<leader>on", 
	":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>",
	{ desc = "Apply the note template to the md file" }
)
-- strip date from note title and replace dashes with spaces
-- must have cursor on title
vim.keymap.set(
	"n", 
	"<leader>of", 
	":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>",
	{ desc = "Format the title of the Note" }
)
--
-- search for files in full vault
vim.keymap.set(
	"n",
	"<leader>os",
	':Telescope find_files search_dirs={"/Users/neil.patterson/library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Work"}<cr>',
	{ desc = "Search for files in obsidian vault" }
)
vim.keymap.set(
	"n",
	"<leader>oz",
	':Telescope live_grep search_dirs={"/Users/neil.patterson/library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Work"}<cr>',
	{ desc = "Grep search for files in obsidain vault" }
)
--
-- for review workflow
-- move file in current buffer to +Outbox folder
vim.keymap.set(
	"n",
	"<leader>ok",
	":!mv '%:p' /Users/neil.patterson/library/Mobile\\ Documents/iCloud~md~obsidian/Documents/Work/2\\ Areas<cr>:bd<cr>",
	{ desc = "Move file from obsidian inbox to the outbox" }
)
-- delete file in current buffer
vim.keymap.set("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>", { desc = "Obsidian delete note during review process" })

-- Distraction Free Writing Mode
vim.keymap.set("n", "<leader>zz", ":ZenMode<cr>", { desc = "Open distraction free writing mode" })
vim.keymap.set("n", "<leader>ll", ":Limelight!!<cr>", { desc = "Enter Limelight in writing mode" })


