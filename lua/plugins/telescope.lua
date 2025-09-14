return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' }
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<Leader>ff", builtin.find_file, {})
		vim.keymap.set("n", "<Leader>fw", builtin.live_grep, {})
	end,


}
