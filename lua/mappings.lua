local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-/>', ':NvimTreeToggle<CR>', opts)
map('n', '<A-w>', '<Cmd>BufferClose<CR>', opts)
