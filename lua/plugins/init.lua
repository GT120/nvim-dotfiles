return {
	{
		"stevearc/conform.nvim", -- uncomment for format on save
		config = function()
			require "configs.conform"
		end,
	},

	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		ft = { "typescript", "typescriptreact" },
		opts = function()
			require "configs.typescript-tools"
		end,
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "configs.lspconfig"
		end,
	},

	-- {
	-- 	"nvimtools/none-ls.nvim",
	-- 	opts = require "configs.none-ls"
	-- },

	{
		"nvim-treesitter/nvim-treesitter",
		opts = function()
			require "configs.treesitter"
		end,
	},

	{
		"folke/trouble.nvim",
		cmd = "Trouble",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = function()
			require "configs.trouble"
		end,
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},

	{
		"olexsmir/gopher.nvim",
		ft = "go",
		config = function()
			require "configs.gopher"
		end,
		build = function()
			vim.cmd [[silent! GoInstallDeps]]
		end,
	},

	{
		"rcarriga/nvim-notify",
		config = function()
			require "configs.notify"
		end,
	},
}
