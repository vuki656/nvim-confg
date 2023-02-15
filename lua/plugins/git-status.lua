-- Name: Git Signs
-- Description: Git line status in sidebar
-- Link: https://github.com/lewis6991/gitsigns.nvim

local git_signs = require("gitsigns")

local colors = require("utils.colors")
local set_highlight = require("utils.set-highlight")

------------------------------------------------------------------------------------------
----------------------------------- SETUP ------------------------------------------------
------------------------------------------------------------------------------------------

git_signs.setup({
    signs = {
        add = {
            hl = "GitSignsAdd",
            text = "█",
            numhl = "GitSignsAddNr",
            linehl = "GitSignsAddLn",
        },
        change = {
            hl = "GitSignsChange",
            text = "█",
            numhl = "GitSignsChangeNr",
            linehl = "GitSignsChangeLn",
        },
        delete = {
            hl = "GitSignsDelete",
            text = "█",
            numhl = "GitSignsDeleteNr",
            linehl = "GitSignsDeleteLn",
        },
        topdelete = {
            hl = "GitSignsDelete",
            text = "█",
            numhl = "GitSignsDeleteNr",
            linehl = "GitSignsDeleteLn",
        },
        changedelete = {
            hl = "GitSignsChange",
            text = "█",
            numhl = "GitSignsChangeNr",
            linehl = "GitSignsChangeLn",
        },
    },
    current_line_blame = true,
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol",
        delay = 300,
    },
    on_attach = function(buffer_number)
        local plugin = package.loaded.gitsigns

        local function map(mode, key, action, options)
            options = options or {}
            options.buffer = buffer_number

            vim.keymap.set(mode, key, action, options)
        end

        map("n", "]c", plugin.next_hunk)
        map("n", "[c", plugin.prev_hunk)
        map("n", "<LEADER>hR", plugin.reset_buffer)
    end,
})

------------------------------------------------------------------------------------------
----------------------------------- COLORS -----------------------------------------------
------------------------------------------------------------------------------------------

set_highlight({
    list = {
        { group = "GitSignsAdd", foreground = colors.green },
        { group = "GitSignsChange", foreground = colors.orange },
        { group = "GitSignsDelete", foreground = colors.red },
        { group = "GitSignsAddPreview", foreground = colors.green },
        { group = "GitSignsDeletePreview", foreground = colors.red },
        { group = "GitSignsCurrentLineBlame", foreground = colors.grey, background = colors.grey_lighter },
    },
})
