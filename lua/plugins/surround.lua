local status, surround = pcall(require, "nvim-surround")
if not status then
	return
end

surround.setup({
	--[[
   -- Nots:
   --open pairs: 添加空白字符
   -- close pairs: 不会添加空白字符
   --]]
	keymaps = {
		normal = "ys",
		normal_cur = "yss",
		visual = "S",
		delete = "ds",
		change = "cs",
	},

	aliases = {
		["a"] = ">", -- angle brackets
		["b"] = ")", -- brackets
		["B"] = "}",
		["r"] = "]",
		["q"] = { '"', "'", "`" },
		["s"] = { "}", "]", ")", ">", '"', "'", "`" },
	},
})
