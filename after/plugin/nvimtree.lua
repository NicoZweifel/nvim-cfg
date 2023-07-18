  local function my_on_attach(bufnr)
    local api = require('nvim-tree.api')
    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.set('n', '<leader>pv',     api.tree.focus)
    vim.keymap.set('n', '<leader>pt',     api.tree.focus)
    vim.keymap.set('n', '<leader>tt',     api.tree.toggle)
  end

  require("nvim-tree").setup({
    on_attach = my_on_attach,
  })
