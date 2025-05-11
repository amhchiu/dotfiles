return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    opts = { style = "moon" },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme "tokyonight"
    end,
  },
  { 
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    enabled = false,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- "latte", "frappe", "macchiato", "mocha"
        custom_highlights = function(colors)
            return {
                -- Comment = { fg = "#8FBC8F", italic = true },
            }
        end
      })
      vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = 'hard'
      vim.cmd.colorscheme('gruvbox-material')
    end
  },
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_enable_italic = true
      vim.g.everforest_background = 'hard'
      vim.g.everforest_transparent_background = 1
      vim.cmd.colorscheme('everforest')
    end
  }
}
