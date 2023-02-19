local status, dashboard = pcall(require, "dashboard")
if not status then
	return
end

dashboard.setup({
	config = {
		theme = "hyper",
		header = {
			[[          ▀████▀▄▄              ▄█ ]],
			[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
			[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
			[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
			[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
			[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
			[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
			[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
			[[   █   █  █      ▄▄           ▄▀   ]],
		},
		shortcut = {
			{
				desc = " Files",
				action = "Telescope find_files",
				key = "f",
			},
			{
				desc = "  History",
				action = "Telescope oldfiles",
				key = "h",
			},
			{
				desc = " Marks",
				group = "DiagnosticHint",
				action = "Telescope marks",
				key = "m",
			},
		},
		footer = {},
	},
})
