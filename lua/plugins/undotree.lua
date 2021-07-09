-- Name: Undotree
-- Description: Multiple undo history view
-- Link: https://github.com/mbbill/undotreelocal

remap = vim.api.nvim_set_keymap

------------------------------------------------------------------------------------------
----------------------------------- SETUP ------------------------------------------------
------------------------------------------------------------------------------------------

vim.g.undotree_SplitWidth = 50                                                  -- Set width
vim.g.undotree_ShortIndicators = 0                                              -- Needed for width to be correctly set
vim.g.undotree_DiffAutoOpen = 0                                                 -- Don't auto open diff view
vim.g.undotree_SetFocusWhenToggle = 1                                           -- Auto focus on open

------------------------------------------------------------------------------------------
----------------------------------- REMAPS -----------------------------------------------
------------------------------------------------------------------------------------------

-- Close undotree
remap("n", "<leader>uo", ":NvimTreeClose<CR> :UndotreeToggle<CR>", { noremap = true, silent = true })

-- Open undotree
remap("n", "<leader>uc", ":UndotreeToggle<CR> :NvimTreeOpen<CR> ", { noremap = true, silent = true })
