return {
  "https://github.com/yetone/avante.nvim",
  enabled = false,
  event = "VeryLazy",
  build = "make",
  dependencies = {
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/stevearc/dressing.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/MunifTanjim/nui.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/zbirenbaum/copilot.lua",
    {
      -- support for image pasting
      "https://github.com/HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
  },
  lazy = false,
  version = false,
  opts = {
    provider = "copilot",
  },
}
