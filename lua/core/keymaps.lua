vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { silent = true, noremap = true }

-- General keymaps
keymap.set("i", "jk", "<Esc>", opts)
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)
keymap.set("n", "x", '"_x', opts)

-- Split window
keymap.set("n", "<leader>sh", ":split<CR>", opts)
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)
-- 关闭当前页面
keymap.set("n", "<leader>sc", "<C-w>c", opts)
-- 关闭其他页面 only
keymap.set("n", "<leader>so", "<C-w>o", opts)

-- 上下移动选中文本
keymap.set("v", "J", ":move '>+1<CR>gv-gv", opts)
keymap.set("v", "K", ":move '<-2<CR>gv-gv", opts)

-- Tab movement
keymap.set("n", "<leader>to", ":tabnew<CR>", opts)
keymap.set("n", "<leader>tn", ":tabn<CR>", opts)
keymap.set("n", "<leader>tp", ":tabp<CR>", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- Find files
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- Find string
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- Find string under cursor
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts) -- list all git commits (use <cr> to checkout) ['gc' for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", opts) -- list git commits for current file/buffer (use <cr> to checkout) ['gfc' for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts) -- list git branches (use <cr> to checkout) ['gb' for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts) -- list current changes per file with diff preview ['gs' for git status]

-- gitsigns
keymap.set("n", "<leader>glb", ":Gitsigns toggle_current_line_blame<CR>", opts)
keymap.set("n", "]c", "<cmd>Gitsigns next_hunk<CR>", opts)
keymap.set("n", "[c", "<cmd>Gitsigns prev_hunk<CR>", opts)
keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", opts)
keymap.set("n", "<leader>gdc", "<cmd>Gitsigns toggle_deleted<CR>", opts)

-- toggleterm
keymap.set("t", "<esc>", "<C-\\><C-n>", opts)
keymap.set("t", "jk", "<C-\\><C-n>", opts)
keymap.set("t", "<C-l>", "<Cmd> wincmd l<CR>", opts)
keymap.set("t", "<C-h>", "<Cmd> wincmd h<CR>", opts)
keymap.set("t", "<C-j>", "<Cmd> wincmd j<CR>", opts)
keymap.set("t", "<C-k>", "<Cmd> wincmd k<CR>", opts)

keymap.set("i", "<C-f>", "<Esc>la", opts)
