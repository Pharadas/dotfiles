local wk = require('which-key')
local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")

wk.register({
    ["<leader>"] = {
        g = {
            name = "Git",
            s = {vim.cmd.Git, "Git"}
        },

        h = {
            name = "Harpoon",
            a = {harpoon_mark.add_file, "Add file to harpoon"},
            m = {harpoon_ui.toggle_quick_menu, "Open harpoon menu"}
        },

        l = {
            name = "LSP",
            d = {"Go to symbol definition"},
            r = {"Rename symbol"},
            -- s = {"Signature help"},
            v = {
                name = "View",
                h = {"Workspace symbols"},
                d = {"File diagnostics"},
                a = {"Code actions"},
                r = {"References"}
            }
        },

        e = {"Folder tree"},
        b = {"Active buffers"},

        u = {"Undo tree"},

        t = {
            name = "Telescope",
            f = {"Find files"},
            g = {"Git files"},
            s = {"Grep"},
            h = {"Help"}
        }
    }
})
