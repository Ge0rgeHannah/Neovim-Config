return {
  {
    "sainnhe/everforest",
    lazy = false, -- make sure it loads at startup
    priority = 1000, -- ensure it loads before other plugins
    config = function()
      -- Optionally configure Everforest options here
      -- vim.g.everforest_background = "hard"
      -- vim.g.everforest_enable_italic = 1

      -- Load the colorscheme
      vim.cmd("colorscheme everforest")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
