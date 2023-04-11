local status, wk = pcall(require, "which-key")

if not status then
	return
end

wk.setup({
	layout = {
		border = 6,
	},

	triggers_blacklist = {
		-- list of mode / prefixes that should never be hooked by WhichKey
		i = { "j", "k", "<Space>", "<leader>" },
		v = { "j", "k" },
	},
})
