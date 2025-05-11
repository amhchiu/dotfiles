-- In your keymaps configuration file
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- fzf-lua: File searching
map('n', '<leader>ff', '<cmd>lua require("fzf-lua").files()<CR>', opts) -- searches for files
map('n', '<leader>fg', '<cmd>lua require("fzf-lua").live_grep()<CR>', opts) -- searches for text pattern recursively from current dir respecting .gitignore 
map('n', '<leader>fb', '<cmd>lua require("fzf-lua").buffers()<CR>', opts)
map('n', '<leader>fl', '<cmd>lua require("fzf-lua").blines()<CR>', opts) -- Lines in current buffer

-- diagnostics
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Diag: Open float' })
-- Go to the previous diagnostic in the current buffer
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Diag: Prev' })
-- Go to the next diagnostic in the current buffer
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Diag: Next' })
-- Set diagnostics in a quickfix list (useful for processing multiple diagnostics)
-- vim.keymap.set('n', '<leader>dl', vim.diagnostic.setqflist, { desc = 'Diag: Quickfix list' })

-- List and fuzzy find diagnostics in the current document (buffer)
vim.keymap.set('n', '<leader>fd', function()
  require('fzf-lua').diagnostics_document()
end, { desc = 'Diag: Document (fzf)' })

