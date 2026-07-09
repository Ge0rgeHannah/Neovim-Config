-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- harpoon setup
local harpoon = require("harpoon")

-- required
harpoon:setup({})

local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers")
    .new({}, {
      prompt_title = "Harpoon",
      finder = require("telescope.finders").new_table({
        results = file_paths,
      }),
      previewer = conf.file_previewer({}),
      sorter = conf.generic_sorter({}),
    })
    :find()
end

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<leader>r", function()
  harpoon:list():remove()
end)
vim.keymap.set("n", "<C-e>", function()
  toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })

vim.keymap.set("n", "<leader><C-h>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader><C-j>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader><C-k>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader><C-l>", function()
  harpoon:list():select(4)
end)
