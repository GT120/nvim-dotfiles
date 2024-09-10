-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
	"html",
	"cssls",
	"eslint",
	"tailwindcss",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	}
end

lspconfig.gopls.setup {
	on_attach = nvlsp.on_attach,
	capabilities = nvlsp.capabilities,
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
			},
		},
	},
}

-- lspconfig.ts_ls.setup {
-- 	on_attach = nvlsp.on_attach,
-- 	capabilities = nvlsp.capabilities,
-- 	cmd = {"ts_ls"},
-- 	filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "json" },
-- 	settings = {},
-- }
