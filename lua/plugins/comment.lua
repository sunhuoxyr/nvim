local status, comment = pcall(require, "Comment")
if not status then
	return
end
local api = require("Comment.api")
local map = vim.keymap.set

map("n", "<leader>/", api.call("toggle.linewise.current", "g@$"), { expr = true, desc = "Comment current line" })

comment.setup()
