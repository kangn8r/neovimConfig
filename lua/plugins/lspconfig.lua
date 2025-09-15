return {
	"neovim/nvim-lspconfig",
	config = function()
		local servers = { "html", "cssls", "jdtls", "rust_analyzer", "pylsp", "pyrefly", "clangd", "yaml_language_server", "nil_ls", "lua_ls"  }
		vim.lsp.enable(servers)
	end,
}
