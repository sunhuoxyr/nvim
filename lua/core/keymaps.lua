vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { silent = true, noremap = true }

-- General keymaps
keymap("i", "jk", "<Esc>", opts)
keymap("n", "<leader>nh", ":nohl<CR>", opts)
keymap("n", "x", '"_x', opts)

-- Split window
keymap("n", "<leader>sx", ":split<CR>", opts)
keymap("n", "<leader>sv", ":vsplit<CR>", opts)
-- 关闭当前页面
keymap("n", "<leader>sc", "<C-w>c", opts)
-- 关闭其他页面 only
keymap("n", "<leader>so", "<C-w>o", opts)

-- 上下移动选中文本
keymap("v", "J", ":move '>+1<CR>gv-gv", opts)
keymap("v", "K", ":move '<-2<CR>gv-gv", opts)

-- Tab movement
keymap("n", "<leader>to", ":tabnew<CR>", opts)
keymap("n", "<leader>tn", ":tabn<CR>", opts)
keymap("n", "<leader>tp", ":tabp<CR>", opts)
keymap("n", "<leader>tc", ":tabclose<CR>", opts) -- close current tab

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- Find files
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- Find string
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- Find string under cursor
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers

-- telescope git commands
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts) -- list all git commits (use <cr> to checkout) ['gc' for git commits]
keymap("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", opts) -- list git commits for current file/buffer (use <cr> to checkout) ['gfc' for git file commits]
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts) -- list git branches (use <cr> to checkout) ['gb' for git branch]
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts) -- list current changes per file with diff preview ['gs' for git status]

-- gitsigns
keymap("n", "<leader>tb", ":Gitsigns toggle_current_line_blame<CR>", opts)
keymap("n", "]c", "<cmd>Gitsigns next_hunk<CR>", opts)
keymap("n", "[c", "<cmd>Gitsigns prev_hunk<CR>", opts)
keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", opts)
keymap("n", "<leader>gD", "<cmd>Gitsigns toggle_deleted<CR>", opts)

-- toggleterm
keymap("t", "<esc>", "<C-\\><C-n>", opts)
keymap("t", "jk", "<C-\\><C-n>", opts)
keymap("t", "<C-l>", "<Cmd> wincmd l<CR>", opts)
keymap("t", "<C-h>", "<Cmd> wincmd h<CR>", opts)
keymap("t", "<C-j>", "<Cmd> wincmd j<CR>", opts)
keymap("t", "<C-k>", "<Cmd> wincmd k<CR>", opts)

keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap("i", "<C-f>", "<Esc>la", opts)
