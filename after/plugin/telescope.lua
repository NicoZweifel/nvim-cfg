local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, {})

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>pt", builtin.lsp_type_definitions, {})
vim.keymap.set("n", "<leader>pd", builtin.lsp_definitions, {})
vim.keymap.set("n", "<leader>po", builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
vim.keymap.set("n", "<leader>pg", builtin.git_files, {})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set("n", "<leader>ph", builtin.help_tags, {})
