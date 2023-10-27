-- Name: Telescope
-- Description: Everything finder
-- Link: https://github.com/nvim-telescope/telescope.nvim

local actions = require("telescope.builtin")
local telescope = require("telescope")

local colors = require("utils.colors")
local set_highlight = require("utils.set-highlight")
local set_keymap = require("utils.set-keymap")

------------------------------------------------------------------------------------------
----------------------------------- SETUP ------------------------------------------------
------------------------------------------------------------------------------------------

telescope.setup({
    defaults = {
        path_display = { "tail" },
        file_ignore_patterns = {
            "package-lock.json",
            "node_modules",
            "yarn.lock",
            ".next",
            ".idea",
            ".yarn",
        },
    },
})

telescope.load_extension("fzf")

------------------------------------------------------------------------------------------
----------------------------------- KEYMAPS ----------------------------------------------
------------------------------------------------------------------------------------------

set_keymap({
    list = {
        {
            key = "<LEADER>pg",
            actions = actions.git_status,
            description = "Find changed git lines in project",
        },
        {
            key = "<LEADER>bc",
            actions = actions.git_bcommits,
            description = "Browse buffer commits",
        },
        {
            key = "<LEADER>pf",
            actions = function()
                actions.find_files({
                    hidden = true,
                })
            end,
            description = "Find git files in project",
        },
        {
            key = "<LEADER>pc",
            actions = actions.registers,
            description = "Find copied text",
        },
        {
            key = "<LEADER>ps",
            actions = actions.live_grep,
            description = "Find text in project",
        },
        {
            key = "<LEADER>pad",
            actions = actions.diagnostics,
            description = "Find project diagnostics (errors, warnings...)",
        },
        {
            key = "<LEADER>pr",
            actions = actions.lsp_references,
            description = "Find variable references in project",
        },
        {
            key = "<LEADER>pi",
            actions = actions.lsp_implementations,
            description = "Find variable implementations in project",
        },
        {
            key = "<LEADER>pd",
            actions = actions.lsp_definitions,
            description = "Find variable definitions in project",
        },
        {
            key = "<LEADER>hl",
            actions = actions.highlights,
            description = "See all registered highlight groups",
        },
        {
            key = "<LEADER>gh",
            actions = actions.help_tags,
            description = "Find in manual pages",
        },
    },
})

------------------------------------------------------------------------------------------
----------------------------------- COLORS -----------------------------------------------
------------------------------------------------------------------------------------------

set_highlight({
    list = {
        { group = "TelescopePromptCounter", foreground = colors.orange },
        { group = "TelescopeResultsLineNr", foreground = colors.white },
    },
})
