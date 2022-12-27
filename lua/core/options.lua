local opt = vim.opt

-- line numbers
opt.relativenumber = true -- fast movement by number + j/k
opt.number = true

-- tabs && indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- offset
opt.scrolloff = 5

-- mouse
opt.mouse = "nv"

opt.iskeyword:append("-")
opt.wildignore:append({ "*/node_modules/*" })

opt.foldmethod = "indent"
opt.foldlevel = 999
