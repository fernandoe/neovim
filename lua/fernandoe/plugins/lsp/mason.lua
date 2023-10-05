return {
    "https://github.com/williamboman/mason.nvim",
    enabled = true,
    dependencies = {
    },
    config = function ()
        local mason = require("mason")
        mason.setup({
            ui = {
                icons = {
                    enabled = true,
                },
            },
        })
    end
}
