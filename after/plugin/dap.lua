vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>")
vim.keymap.set("n", "<leader>dus", function()
	local widgets = require("dap.ui.widgets")
	local sidebar = widgets.sidebar(widgets.scopes)
	sidebar.open()
end)

vim.keymap.set("n", "<leader>dgt", function()
	require("dap-go").debug_test()
end)

vim.keymap.set("n", "<leader>dgl", function()
	require("dap-go").debug_last()
end)

vim.keymap.set("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>")

vim.keymap.set("n", "<leader>gsy",     "<cmd> GoTagAdd yaml <CR>")
