return {
    "https://github.com/nvim-lualine/lualine.nvim",
    dependencies = {
        "https://github.com/nvim-tree/nvim-web-devicons",
        "https://github.com/jonahgoldwastaken/copilot-status.nvim",
    },
    config = function()
        local lualine = require("lualine")
        local lazy_status = require("lazy.status") -- to configure lazy pending updates count

        local neovim_logo = function()
            return ""
        end

        local copilot_status = function()
            local copilot_status = require("copilot_status")
            local status_string = copilot_status.status_string()
            return status_string
        end

        local copilot_color = function()
            local color = "#ff0000"
            if copilot_status == "idle" then
                color = "#00ff00"
            end
            return color
        end

        -- configure lualine with modified theme
        lualine.setup({
            options = {
                -- theme = "tokyonight",
                theme = "horizon",
            },
            sections = {
                lualine_a = {
                    { neovim_logo },
                    { "mode" },
                },
                lualine_c = {
                    { "filename" },
                    { "location" },
                    {
                        require("noice").api.statusline.mode.get,
                        cond = require("noice").api.statusline.mode.has,
                        color = { fg = "#ff9e64" },
                    },
                },
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = "#ff9e64" },
                    },
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                    { copilot_status, color = { fg = copilot_color } },
                },
            },
        })
    end,
}

