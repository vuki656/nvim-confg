-- Name: Toggleterm
-- Description: Builtin Terminal Navigator
-- Link: https://github.com/akinsho/nvim-toggleterm.lua

local toggleterm = require("toggleterm")

local set_keymap = require("utils.set_keymap")

require("utils.keymaps.toggle_git_window")
require("utils.keymaps.toggle_docker_window")
require("utils.keymaps.toggle_terminal_window")

------------------------------------------------------------------------------------------
------------------------------------ SETUP -----------------------------------------------
------------------------------------------------------------------------------------------

toggleterm.setup({
    shade_terminals = false,
})

------------------------------------------------------------------------------------------
----------------------------------- KEYMAPS ----------------------------------------------
------------------------------------------------------------------------------------------

set_keymap({
    list = {
        {
            key = "<LEADER>lg",
            actions = "<CMD>lua toggle_git_window()<CR>",
            description = "Open a floating buffer with lazygit",
        },
        {
            key = "<LEADER>ld",
            actions = "<CMD>lua toggle_docker_window()<CR>",
            description = "Open a floating buffer with lazydocker",
        },
        {
            key = "<LEADER>tm",
            actions = "<CMD>lua toggle_terminal_window()<CR>",
            description = "Open a floating buffer with a blank terminal",
        },
    },
})
