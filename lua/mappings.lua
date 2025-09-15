local map = vim.keymap.set

-- General
map("n", "H", "^")
map("n", "L", "$")

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- Telescope
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fw', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Neo Tree
map("n", "<C-n>", ":Neotree toggle<CR>")


-- BarBar
map('n', '<S-tab>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<tab>', '<Cmd>BufferNext<CR>', opts)
map('n', '<Leader><tab>',   '<Cmd>BufferPick<CR>', opts)
map('n', '<Leader>x', '<Cmd>BufferClose<CR>', opts)
map('n', '<Leader>X', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
