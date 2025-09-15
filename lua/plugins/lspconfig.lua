return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconf = require("lspconfig")
		lspconf.lua_ls.setup{}
		lspconf.hyprls.setup{}
		lspconf.pylsp.setup{}
		lspconf.jdtls.setup{}
	end,
}
