return {
  "https://github.com/goolord/alpha-nvim",
  dependencies = { "https://github.com/gnvim-tree/nvim-web-devicons" },
  config = function()
    local startify = require("alpha.themes.startify")
    -- available: devicons, mini, default is mini
    -- if provider not loaded and enabled is true, it will try to use another provider
    startify.file_icons.provider = "devicons"
    require("alpha").setup(startify.config)
  end,
}
