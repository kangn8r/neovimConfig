return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
		theme = "solarized",
		sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'lsp_status', 'filetype'},
        lualine_z = {'location'}
    },

	}
}
