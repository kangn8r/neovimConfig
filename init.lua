vim.cmd("set number")
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")
vim.g.mapleader = "<Space>"

require("config.lazy")
require("mappings")

require("toggleterm").setup{}

--Snippets Setup
require("luasnip.loaders.from_vscode").lazy_load()

-- Ghost Text
vim.diagnostic.config({
	virtual_text = true,
	float = {
		source = "always"
	}
})

--Autocompletion
local cmp = require("cmp")
local luasnip = require("luasnip")
vim.opt.completeopt = {"menu", "menuone", "noselect"}

local select_ops = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},

	sources = {
		{name = "path"},
		{name = "nvim_lsp", keyword_length = 1},
		{name = "buffer", keyword_length = 3},
		{name = "luasnip", keyword_length = 2},
	},

	window = {
		documentation = cmp.config.window.bordered()
	},

	formatting = {
		fields = {"menu", "abbr", "kind"},
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'λ',
      	luasnip = '⋗',
      	buffer = 'Ω',
      	path = '🖫',
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end
	},

	mapping = {
		["<CR>"] = cmp.mapping.confirm({select = false}),
		['<Up>'] = cmp.mapping.select_prev_item(select_opts),
		['<Down>'] = cmp.mapping.select_next_item(select_opts),
		['<C-e>'] = cmp.mapping.abort(),
	},
})


