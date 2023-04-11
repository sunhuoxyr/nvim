vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { silent = true, noremap = true }

-- General keymaps
keymap("i", "jk", "<Esc>", opts)
keymap("n", "<leader>nh", ":nohl<CR>", opts)
keymap("n", "x", '"_x', opts)

-- Split window
keymap("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap("n", "<leader>sx", ":close<CR>") -- close current split window

-- Tab movement
keymap("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- 上下移动选中文本
keymap("v", "J", ":move '>+1<CR>gv-gv", opts)
keymap("v", "K", ":move '<-2<CR>gv-gv", opts)

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- Find files
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- Find string
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- Find string under cursor
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts) -- list all git commits (use <cr> to checkout) ['gc' for git commits]
keymap("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", opts) -- list git commits for current file/buffer (use <cr> to checkout) ['gfc' for git file commits]
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts) -- list git branches (use <cr> to checkout) ['gb' for git branch]
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts) -- list current changes per file with diff preview ['gs' for git status]

-- restart lsp server
keymap("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- gitsigns
keymap("n", "<leader>tb", ":Gitsigns toggle_current_line_blame<CR>", opts)
keymap("n", "]c", "<cmd>Gitsigns next_hunk<CR>", opts)
keymap("n", "[c", "<cmd>Gitsigns prev_hunk<CR>", opts)
keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", opts)
keymap("n", "<leader>gD", "<cmd>Gitsigns toggle_deleted<CR>", opts)

keymap("i", "<C-f>", "<Esc>la", opts)
