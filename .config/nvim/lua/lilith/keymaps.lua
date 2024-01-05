local keymap = vim.keymap
local opts = { silent = true }
-- Window Navigation
keymap.set("n", "<C-Up>", "<C-w>k", opts)       -- Nav Up
keymap.set("n", "<C-Left>", "<C-w>h", opts)     -- Nav Left
keymap.set("n", "<C-Down>", "<C-w>j", opts)     -- Nav Down
keymap.set("n", "<C-Right>", "<C-w>l", opts)    -- Nav Right

keymap.set("n", "<C-k>", "<C-w>k", opts)        -- Nav Up
keymap.set("n", "<C-h>", "<C-w>h", opts)        -- Nav Left
keymap.set("n", "<C-j>", "<C-w>j", opts)        -- Nav Down
keymap.set("n", "<C-l>", "<C-w>l", opts)        -- Nav Right

-- Window Management
keymap.set("n", "<leader><Left>", ":vsplit<CR>", opts)      -- Split Vertical
keymap.set("n", "<leader><Right>", ":vsplit<CR>", opts)     -- Split Vertical
keymap.set("n", "<leader><Up>", ":split<CR>", opts)         -- Split Horizontal
keymap.set("n", "<leader><Down>", ":split<CR>", opts)       -- Split Horizontal

-- editing
keymap.set("n", "<C-q>", ":q<CR>", opts)    -- Quit on Cntr-Q
keymap.set("n", "<leader>qf", ":q!<CR>", opts)    -- Force Quit on space-Q-F
keymap.set("n", "<C-w>", ":w<CR>", opts)    -- Write on Cntr-W
