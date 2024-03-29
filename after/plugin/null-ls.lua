local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.gofumpt,
		null_ls.builtins.formatting.goimports_reviser,
		null_ls.builtins.formatting.golines,
		null_ls.builtins.diagnostics.eslint_d.with({
			prefer_local = "node_modules/.bin",
		}),
		null_ls.builtins.code_actions.eslint_d.with({
			prefer_local = "node_modules/.bin",
		}),
		null_ls.builtins.formatting.prettierd.with({
			prefer_local = "node_modules/.bin",
		}),
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.golines,
	},
})
