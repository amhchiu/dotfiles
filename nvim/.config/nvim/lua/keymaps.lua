-- diagnostics
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Diag: Open float' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Diag: Prev' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Diag: Next' })

if vim.g.vscode then
  local vscode = require('vscode')
  vim.keymap.set('n', 'za', function() vscode.action('editor.toggleFold') end)
  vim.keymap.set('n', 'zc', function() vscode.action('editor.fold') end)
  vim.keymap.set('n', 'zo', function() vscode.action('editor.unfold') end)
  vim.keymap.set('n', 'zM', function() vscode.action('editor.foldAll') end)
  vim.keymap.set('n', 'zR', function() vscode.action('editor.unfoldAll') end)
end

if not vim.g.vscode then
  local map = vim.keymap.set
  local opts = { noremap = true, silent = true }

  -- fzf-lua: File searching
  map('n', '<leader>ff', '<cmd>lua require("fzf-lua").files()<CR>', opts)
  map('n', '<leader>fg', '<cmd>lua require("fzf-lua").live_grep()<CR>', opts)
  map('n', '<leader>fb', '<cmd>lua require("fzf-lua").buffers()<CR>', opts)
  map('n', '<leader>fl', '<cmd>lua require("fzf-lua").blines()<CR>', opts)

  -- List and fuzzy find diagnostics in the current document (buffer)
  map('n', '<leader>fd', function()
    require('fzf-lua').diagnostics_document()
  end, { desc = 'Diag: Document (fzf)' })

  -- formatter
  map({ "n", "v" }, "<leader>mp", function()
    require('conform').format({
      lsp_fallback = true,
      async = false,
      timeout_ms = 500,
    })
  end, { desc = "Format file or range (in visual mode)" })
end
