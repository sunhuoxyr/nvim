local aerial_setup, aerial = pcall(require, "aerial")
if not aerial_setup then
	return
end

aerial.setup({
	backends = { "lsp", "treesitter", "markdown", "man" },
	layout = { min_width = 28 },
	show_guides = true,
	guides = {
		mid_item = "├ ",
		last_item = "└ ",
		nested_top = "│ ",
		whitespace = "  ",
	},
	on_attach = function(bufnr)
		-- Jump forwards/backwards with '{' and '}'
		vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
		vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
	end,
})
