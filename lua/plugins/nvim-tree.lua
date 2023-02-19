local status, nvimtree = pcall(require, "nvim-tree")
if not status then
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwplugin = 1
-- change color for arrows in tree to light blue
vim.cmd([[ highlight nvimtreeindentmarker guifg=#3fc5ff ]])

nvimtree.setup({
	-- 使用了 dashboard, 不在需要直接开启了
	-- open_on_setup = true,
	update_cwd = true,
	-- change folder arrow icons
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},
	update_focused_file = {
		enable = true,
	},
	view = {
		mappings = {
			list = {
				{ key = "<C-x>", action = "" },
				{ key = "<C-v>", action = "vsplit" },
				{ key = "<C-t>", action = "tabnew" },
				{ key = "<", action = "prev_sibling" },
				{ key = ">", action = "next_sibling" },
				{ key = "P", action = "parent_node" },
				{ key = "K", action = "first_sibling" },
				{ key = "J", action = "last_sibling" },
				{ key = "R", action = "refresh" },
				{ key = "a", action = "create" },
				{ key = "d", action = "remove" },
				{ key = "r", action = "rename" },
				{ key = "<C-r>", action = "full_rename" },
				{ key = "e", action = "rename_basename" },
				{ key = "x", action = "cut" },
				{ key = "c", action = "copy" },
				{ key = "p", action = "paste" },
				{ key = "y", action = "copy_name" },
				{ key = "Y", action = "copy_path" },
				{ key = "gy", action = "copy_absolute_path" },
				{ key = "f", action = "live_filter" },
				{ key = "F", action = "clear_live_filter" },
				{ key = "q", action = "close" },
				{ key = "f", action = "live_filter" },
				{ key = "F", action = "clear_live_filter" },
				{ key = "q", action = "close" },
				{ key = "<C-k>", action = "toggle_file_info" },
				{ key = { "<C-]>", "<2-RightMouse>" }, action = "cd" },
				{ key = "H", action = "toggle_dotfiles" },
			},
		},
	},
})
