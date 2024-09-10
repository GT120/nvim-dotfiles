require("typescript-tools")

local opts = {
	settings = {
		expose_as_code_action = "all",
		tsserver_file_preferences = {
			includeInlayParameterNameHints = "all",
			includeCompletionsForModuleExports = true,
			quotePreference = "auto",
			allowImportingTsExtensions = true,
		},
		tsserver_format_options = {
			allowIncompleteCompletions = false,
			allowRenameOfImportPath = true,
		},
	},
}
return opts
