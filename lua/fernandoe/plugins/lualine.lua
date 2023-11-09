return {
  "https://github.com/nvim-lualine/lualine.nvim",
  dependencies = {
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/jonahgoldwastaken/copilot-status.nvim",
  },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local copilot_status = function()
      return require("copilot_status").status_string()
    end

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        -- theme = my_lualine_theme,
        theme = "tokyonight",
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
          { copilot_status },
        },
      },
    })
  end,
}
