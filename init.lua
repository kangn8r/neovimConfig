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
cmp.setup({
  completion = { completeopt = "menu,menuone" },

  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),

    ["<CR>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif require("luasnip").expand_or_jumpable() then
        require("luasnip").expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif require("luasnip").jumpable(-1) then
        require("luasnip").jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
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

  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "async_path" },
  },
})


