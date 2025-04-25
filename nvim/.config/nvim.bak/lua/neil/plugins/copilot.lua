return {
	{
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = { enabled = false },
    panel = { enabled = false },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
},
{
  "saghen/blink.cmp",
  optional = true,
  dependencies = { "fang2hou/blink-copilot" },
  opts = {
    sources = {
      default = { "copilot" },
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-copilot",
          score_offset = 100,
          async = true,
        },
      },
    },
  },
},
	-- "zbirenbaum/copilot-cmp",
	-- event = "InsertEnter",
	-- config = function()
	-- 	require("copilot_cmp").setup()
	-- end,
	-- dependencies = {
	-- 	"zbirenbaum/copilot.lua",
	-- 	cmd = "Copilot",
	-- 	config = function()
	-- 		require("copilot").setup({
	-- 			suggestion = { enabled = false },
	-- 			panel = { enabled = false },
	-- 			copilot_model = "claude-3.7-sonnet-3.7",
	-- 		})
	-- 	end,
	-- },
	-- {
	-- 	"olimorris/codecompanion.nvim",
	-- 	config = true,
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 	},
	-- 	opts = {
	-- 		adapters = {
	-- 			copilot = function()
	-- 				return require("codecompanion.adapters").extend(
	-- 					"copilot",
	-- 					{ schema = { model = { default = "claude-3.7.sonnet" } } }
	-- 				)
	-- 			end,
	-- 		},
	-- 		stratagies = {
	-- 			chat = { adapter = "copilot" },
	-- 			inline = { adapter = "copilot" },
	-- 			cmd = { adapter = "copilot"	},
	-- 		},
	-- 		opts = {
	-- 			log_level = "DEBUG",
	-- 		},
	-- 	},
	-- },
}
