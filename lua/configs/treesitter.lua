require("nvim-treesitter.configs").setup({
ensure_installed = {
		"c",
		"cpp",
		"javascript",
		"typescript",
		"go",
		"lua",
		"python",
		"vim",
		"html",
		"css",
		"json",
		"yaml",
		"prisma",
		"sql",
		"c_sharp",
		"markdown",
		"markdown_inline",
	},
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true, disable = { "python" } },
	incremental_selection = {
		enable = true,
	},
})

