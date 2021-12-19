-- Name: Undotree
-- Description: Multiple undo history view
-- Link: https://github.com/mbbill/undotreelocal

local set_keymap = require("utils.set-keymap")

------------------------------------------------------------------------------------------
----------------------------------- SETUP ------------------------------------------------
------------------------------------------------------------------------------------------

-- Set width
vim.g.undotree_SplitWidth = 50

-- Needed for width to be correctly set
vim.g.undotree_ShortIndicators = 0

-- Don't auto open diff view
vim.g.undotree_DiffAutoOpen = 0

-- Auto focus on open
vim.g.undotree_SetFocusWhenToggle = 1

------------------------------------------------------------------------------------------
----------------------------------- KEYMAPS -----------------------------------------------
------------------------------------------------------------------------------------------

set_keymap({
    list = {
        {
            key = "<LEADER>uo",
            actions = {
                "<CMD>NvimTreeClose<CR>",
                "<CMD>UndotreeToggle<CR>",
            },
            description = "Open undotree",
        },
        {
            key = "<LEADER>uc",
            actions = {
                "<CMD>UndotreeToggle<CR>",
                "<CMD>NvimTreeOpen<CR>",
            },
            description = "Close undotree",
        },
    },
})
