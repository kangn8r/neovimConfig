return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconf = require("lspconfig")
		local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconf.lua_ls.setup{
			capabilities = lsp_capabilities
		}
		lspconf.hyprls.setup{
			capabilities = lsp_capabilities
		}
		lspconf.pylsp.setup{
			capabilities = lsp_capabilities
		}
		lspconf.jdtls.setup{
			capabilities = lsp_capabilities
		}
	end,
}
