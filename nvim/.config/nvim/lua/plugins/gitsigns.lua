return {
  "lewis6991/gitsigns.nvim",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("gitsigns").setup()
  end,
}
