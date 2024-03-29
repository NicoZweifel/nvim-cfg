return {
	"jose-elias-alvarez/typescript.nvim",
	"neovim/nvim-lspconfig",
	"simrat39/rust-tools.nvim",
	"tpope/vim-fugitive",
	{
		"folke/tokyonight.nvim",
		config = function()
			vim.cmd([[colorscheme tokyonight-night]])
		end,
	},

	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	},

	"nvim-tree/nvim-web-devicons",

	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- disable netrw at the very start of your init.lua (strongly advised)
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1
			-- set termguicolors to enable highlight groups
			vim.opt.termguicolors = true
			require("nvim-tree").setup({})
		end,
	},

	{
		"romgrk/barbar.nvim",
		dependencies = { "lewis6991/gitsigns.nvim", "nvim-tree/nvim-web-devicons" },
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			opt = true,
		},
	},

	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup()
		end,
	},

	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		end,
	},

	"xiyaowong/nvim-transparent",

	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			local ts_update = require("nvim-treesitter.install").update({
				with_sync = true,
			})
			ts_update()
		end,
	},
	"github/copilot.vim",
	"nvim-treesitter/playground",
	"ThePrimeagen/harpoon",
	"mbbill/undotree",
	"terrortylor/nvim-comment",

	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = { -- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{
				-- Optional
				"williamboman/mason.nvim",
				build = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional
			-- Autocompletion
			{ "hrsh7th/nvim-cmp",
dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = function(_, opts)
      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,

    }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		version = "0.1.1",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	"folke/zen-mode.nvim",
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"olexsmir/gopher.nvim",
		ft = "go",
		config = function(_, opts)
			require("gopher").setup(opts)
			require("core.utils").load_mappings("gopher")
		end,
		build = function()
			vim.cmd([[silent! GoInstallDeps]])
		end,
	},
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				-- config
			})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{
		"NvChad/nvim-colorizer.lua",
		opts = {
			user_default_options = {
				tailwind = true,
			},
		},
	},
}
