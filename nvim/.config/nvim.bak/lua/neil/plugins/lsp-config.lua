return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			-- list of servers for mason to install
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"graphql",
				"emmet_ls",
				-- "ruby_lsp",
				-- "solargraph",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = { 'saghen/blink.cmp' },
		opts = {
			servers = {
				lua_ls = {},
				ts_ls = {},
				html  ={},
				cssls = {},
				tailwindcss = {},
				graphql = {},
				emmet_ls = {},
			},
		},
		config = function(_, opts)
			local lspconfig = require('lspconfig')
			local keymap = vim.keymap -- for conciseness
			local kb_options = { remap = false, silent = true }
			for server, config in pairs(opts.servers) do
			  -- passing config.capabilities to blink.cmp merges with the capabilities in your
			  -- `opts[server].capabilities, if you've defined it
			  config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
			  lspconfig[server].setup(config)
			end
			-- set keybinds
			kb_options .desc = "Show documentation for what is under cursor"
			keymap.set("n", "K", vim.lsp.buf.hover, kb_options)

			kb_options.desc = "Show LSP definitions"
			keymap.set("n", "<leader>gd", vim.lsp.buf.definition, kb_options)

			kb_options.desc = "Show LSP references"
			keymap.set("n", "<leader>gr", vim.lsp.buf.references, kb_options)

			kb_options.desc = "See available code actions"
			keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, kb_options)

			kb_options.desc = "Restart LSP"
			keymap.set("n", "<leader>rs", ":LspRestart<CR>", kb_options) -- mapping to restart lsp if necessary
		end
	},
}
