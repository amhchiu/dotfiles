-- In your keymaps configuration file
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File searching
map('n', '<leader>ff', '<cmd>lua require("fzf-lua").files()<CR>', opts) -- searches for files
map('n', '<leader>fg', '<cmd>lua require("fzf-lua").live_grep()<CR>', opts) -- searches for text pattern recursively from current dir respecting .gitignore 
map('n', '<leader>fb', '<cmd>lua require("fzf-lua").buffers()<CR>', opts)
map('n', '<leader>fl', '<cmd>lua require("fzf-lua").blines()<CR>', opts) -- Lines in current buffer

