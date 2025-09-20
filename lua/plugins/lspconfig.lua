return {
	"neovim/nvim-lspconfig",
	config = function()
		local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config('*', {
				capabilities = lsp_capabilities
			}
		)

		vim.lsp.enable('lua_ls')
		vim.lsp.enable('hyprls')
		vim.lsp.enable('pylsp')
		vim.lsp.enable('jdtls')



	end,
}
