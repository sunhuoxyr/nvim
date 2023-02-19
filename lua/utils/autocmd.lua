local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
	clear = true,
})

local autocmd = vim.api.nvim_create_autocmd

-- 自动切换输入法，需要安装 im-select
-- https://github.com/daipeihust/im-select
autocmd("InsertLeave", {
	group = myAutoGroup,
	callback = require("utils.im-select").macInsertLeave,
})
autocmd("InsertEnter", {
	group = myAutoGroup,
	callback = require("utils.im-select").macInsertEnter,
})

-- 用o换行不要延续注释
autocmd("BufEnter", {
	group = myAutoGroup,
	pattern = "*",
	callback = function()
		vim.opt.formatoptions = vim.opt.formatoptions
			- "o" -- O and o, don't continue comments
			+ "r" -- But do continue when pressing enter.
	end,
})
