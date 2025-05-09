return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = { style = "moon", transparent = true },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme "tokyonight"
    end,
  },
  { 
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "frappe", -- "latte", "frappe", "macchiato", "mocha"
        custom_highlights = function(colors)
            return {
                Comment = { fg = "#8FBC8F", italic = true },
            }
        end

      })
      vim.cmd.colorscheme "catppuccin"
    end
  },
}
