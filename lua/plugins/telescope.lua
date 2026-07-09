return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        hidden = true,
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true,
        },
        live_grep = {
          additional_args = function()
            return { "--hidden", "--no-ignore" }
          end,
        },
      },
    },
  },
}
