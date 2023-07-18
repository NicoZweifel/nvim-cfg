return {
    {
        "nvim-telescope/telescope.nvim",
        version = "0.1.1",
        dependencies = {{"nvim-lua/plenary.nvim"}}
    },

    {
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd([[colorscheme tokyonight-night]])
        end
    },

    {
        "iamcco/markdown-preview.nvim",
        build = function()
            vim.fn["mkdp#util#install"]()
        end
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
        end
    },

    "nvim-tree/nvim-web-devicons",

    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            -- disable netrw at the very start of your init.lua (strongly advised)
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            -- set termguicolors to enable highlight groups
            vim.opt.termguicolors = true
            require("nvim-tree").setup({})
        end
    },

    {
        "romgrk/barbar.nvim",
        dependencies = {"lewis6991/gitsigns.nvim", "nvim-tree/nvim-web-devicons"}
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            opt = true
        }
    },

    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup()
        end
    },

    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup({})
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below

        end
    },

    "xiyaowong/nvim-transparent",

    {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({
                with_sync = true
            })
            ts_update()
        end
    },

    "nvim-treesitter/playground",
    "ThePrimeagen/harpoon",
    "mbbill/undotree",
    "terrortylor/nvim-comment",

    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        dependencies = { -- LSP Support
        {"neovim/nvim-lspconfig"}, -- Required
        -- Autocompletion
        {"hrsh7th/nvim-cmp"}, -- Required
        {"hrsh7th/cmp-nvim-lsp"}, -- Required
        {"hrsh7th/cmp-buffer"}, -- Optional
        {"hrsh7th/cmp-path"}, -- Optional
        {"saadparwaiz1/cmp_luasnip"}, -- Optional
        {"hrsh7th/cmp-nvim-lua"}, -- Optional
        -- Snippets
        {"L3MON4D3/LuaSnip"}, -- Required
        {"rafamadriz/friendly-snippets"} -- Optional
        }
    },

    "folke/zen-mode.nvim",

    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = {"nvim-lua/plenary.nvim"}
    },

--[[     {
        "mfussenegger/nvim-dap",
        init = function()
            require("core.utils").load_mappings("dap")
        end
    }, ]]

    --[[ {
        "dreamsofcode-io/nvim-dap-go",
        ft = "go",
        dependencies = "mfussenegger/nvim-dap",
        config = function(_, opts)
            require("dap-go").setup(opts)
            require("core.utils").load_mappings("dap_go")
        end
    }, ]]

    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
        require("gopher").setup(opts)
        require("core.utils").load_mappings("gopher")
    end,
    build = function()
        vim.cmd([[silent! GoInstallDeps]])
    end

}
