return {
    -- Calls `require('slimline').setup({})`
    "sschleemilch/slimline.nvim",
    opts = {
			components = {
				left = {"mode", "path", "git", "diagnostics"},
				center = {"recording", "searchcount"},
				right = {"filetype_lsp", "progress"},
			},
		}
}
