local plugins = {
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        opts = function(_, opts)
            local logo = [[
██╗   ██╗██╗███████╗██╗ ██████╗ ███╗   ██╗██████╗ ██████╗ ██╗██╗   ██╗███████╗██████╗ 
██║   ██║██║██╔════╝██║██╔═══██╗████╗  ██║██╔══██╗██╔══██╗██║██║   ██║██╔════╝██╔══██╗
██║   ██║██║███████╗██║██║   ██║██╔██╗ ██║██║  ██║██████╔╝██║██║   ██║█████╗  ██████╔╝
╚██╗ ██╔╝██║╚════██║██║██║   ██║██║╚██╗██║██║  ██║██╔══██╗██║╚██╗ ██╔╝██╔══╝  ██╔══██╗
 ╚████╔╝ ██║███████║██║╚██████╔╝██║ ╚████║██████╔╝██║  ██║██║ ╚████╔╝ ███████╗██║  ██║
  ╚═══╝  ╚═╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝
]]
            logo = string.rep("\n", 8) .. logo .. "\n\n"

            opts = opts or {} -- Ensure opts is a table even if nil is passed
            opts.config = opts.config or {} -- Ensure config field is a table
            opts.config.header = vim.split(logo, "\n")
        end,
    },
    {
        "MunifTanjim/prettier.nvim",
        event = { 'VimEnter' },
        keys = {
            { "<leader>fmt", "<cmd>Prettier<cr>"},
        },

        config = function()
            require("extensions.prettier")
        end
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = { 'VimEnter' },
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("extensions.null-ls")
        end,
    },
    {
        "pocco81/auto-save.nvim",
        event = { 'VimEnter' },
        keys = {
            { "<leader>as", "<cmd>ASToggle<cr>"},
        },
        config = function()
            require("extensions.auto-save")
        end,
    },
    {
        "glepnir/lspsaga.nvim",
        event = { "LspAttach", "BufRead" },
        config = function()
            require 'extensions.lspsaga' end,
        dependencies = {
            "nvim-tree/nvim-web-devicons", -- 必要な依存関係
        }
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter", -- 例: InsertEnterイベントで遅延ロード
        config = function()
            require("nvim-autopairs").setup()
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        event = "InsertEnter", -- 例: InsertEnterイベントで遅延ロード
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
    -- {
    -- 	"neoclide/coc.nvim",
    -- 	branch = "release",
    -- 	event = "VimEnter",
    -- 	config = function() require 'extensions.coc'
    -- 	end,
    -- },
    {
        "kdheepak/lazygit.nvim",
        cmd = "LazyGit",
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Lazygit" },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*", -- イシューに合わせてバージョンをロックすることも可能です
        cmd = "ToggleTerm", -- コマンドで遅延ロード
        keys = {
            -- キーバインドを設定する場合はここに追加
            { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
        },
        config = function()
            require("toggleterm").setup({
                -- ToggleTermの設定オプションをここに記述
            })
        end,
    },
    {
        'lmburns/lf.nvim',
        cmd = "Lf", -- コマンドで遅延ロード
        keys = {
            -- キーバインドを設定する場合はここに追加
            { "<leader>lf", "<cmd>Lf<cr>"},
        },

        config = function()
            require('lf').setup({
                -- ここにlf.nvimの設定を追加
            })
        end,
        requires = { 'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons' }, -- 必要な依存関係
        module = 'lf', -- モジュールで遅延ロード
    },
    {
        'nvim-treesitter/nvim-treesitter',
        event = { 'BufNewFile', 'BufReadPre' },
        config = function() require 'extensions.nvim-treesitter' end,
    },
    {
        'rmehri01/onenord.nvim',
        event = { 'VimEnter' },
        priority = 1000,
        config = function() require 'extensions.onenord' end,
    },
    {
        'nvim-lualine/lualine.nvim',
        event = { 'VimEnter' },
        config = function() require 'extensions.lualine' end,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'rmehri01/onenord.nvim',
            'lewis6991/gitsigns.nvim',
            'SmiteshP/nvim-navic',
        }
    },
    {
        'kevinhwang91/nvim-hlslens',
        event = { 'FilterWritePre' },
        config = function() require 'extensions.nvim-hlslens' end,
    },
    {
        'lewis6991/gitsigns.nvim',
        event = { 'BufReadPre' },
        config = function() require 'extensions.gitsigns' end,
    },
    {
        'petertriho/nvim-scrollbar',
        event = { 'BufNewFile', 'BufReadPre' },
        config = function() require 'extensions.nvim-scrollbar' end,
        dependencies = {
            'kevinhwang91/nvim-hlslens', 'lewis6991/gitsigns.nvim'
        }
    },
    {
        'nvim-telescope/telescope.nvim',
        keys = {
            '<leader>ff', '<leader>fg', '<leader>fb', '<leader>fh'
        },
        tag = '0.1.4',
        config = function() require 'extensions.telescope' end,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
    },
    {
        'prochri/telescope-all-recent.nvim',
        keys = {
            '<leader>ff', '<leader>fg', '<leader>fb', '<leader>fh',
        },
        config = function() require 'extensions.telescope-all-recent' end,
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'kkharji/sqlite.lua',
        },
    },
    {
        'nvim-tree/nvim-tree.lua',
        event = { 'VimEnter' },
        keys = {
            '<leader>ex',
        },
        config = function() require 'extensions.nvim-tree' end,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'nvim-telescope/telescope.nvim',
        }
    },
    {
        'neovim/nvim-lspconfig',
        event = { 'BufNewFile', 'BufReadPre' },
        config = function() require 'extensions.nvim-lspconfig' end,
    },
    {
        'williamboman/mason.nvim',
        event = { 'BufNewFile', 'BufReadPre' },
        config = function() require 'extensions.mason' end,
        dependencies = {
            'williamboman/mason-lspconfig.nvim',
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
        },
    },
    {
        'SmiteshP/nvim-navic',
        event = { 'BufNewFile', 'BufReadPre' },
        config = function() require 'extensions.nvim-navic' end,
        dependencies = {
            'neovim/nvim-lspconfig',
        },
    },
    {
        'SmiteshP/nvim-navbuddy',
        keys = {
            '<leader>nb',
        },
        config = function() require 'extensions.nvim-navbuddy' end,
        dependencies = {
            'neovim/nvim-lspconfig',
            'SmiteshP/nvim-navic',
            'MunifTanjim/nui.nvim',
            'nvim-telescope/telescope.nvim',
        },
    },
    {
        'numToStr/Comment.nvim',
        event = { 'VimEnter' },
        config = function() require 'extensions.comment' end,
        ---  dependencies = {
        ---   'SmiteshP/nvim-navbuddy',
        ---},
    },
    {
        'JoosepAlviste/nvim-ts-context-commentstring',
        dependencies = {
            'numToStr/Comment.nvim',
        },
    },
    {
        'hrsh7th/nvim-cmp',
        event = { 'VimEnter' },
        config = function() require 'extensions.nvim-cmp' end,
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-path',
            'onsails/lspkind-nvim',
            'L3MON4D3/LuaSnip',
        },
    },
    {
        'L3MON4D3/LuaSnip',
        event = { 'InsertEnter' },
        version = 'v2.*',
        build = 'make install_jsregexp',
        config = function() require 'extensions.luasnip' end,
        dependencies = {
            'hrsh7th/nvim-cmp',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
        },
    },
    {
        'zbirenbaum/copilot-cmp',
        event = { 'InsertEnter' },
        config = function() require('copilot_cmp').setup() end,
        dependencies = {
            'hrsh7th/nvim-cmp',
            'zbirenbaum/copilot.lua',
        },
    },
    {
        'zbirenbaum/copilot.lua',
        event = { 'InsertEnter' },
        config = function() require 'extensions.copilot' end,
    },
    {
        "j-hui/fidget.nvim",
        event = { 'BufNewFile', 'BufReadPre' },
        config = function() require 'extensions.fidget' end,
        dependencies = {
            'neovim/nvim-lspconfig',
        },
    },
    {
        'folke/trouble.nvim',
        event = { 'BufNewFile', 'BufReadPre' },
        config = function() require 'extensions.trouble' end,
        dependencies = 'nvim-tree/nvim-web-devicons',
    },
    {
        'rcarriga/nvim-notify',
        event = { "VimEnter" },
        config = function() require 'extensions.nvim-notify' end,
    },
    {
        "folke/noice.nvim",
        event = { "VimEnter" },
        config = function() require 'extensions.noice' end,
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        },
    },
}

local opts = {
    defaults = {
        lazy = true,
    },
    checker = {
        enabled = true,
    },
    preformance = {
        cache = {
            enabled = true,
        },
        reset_packpath = true,
        rtp = {
            reset = true,
            paths = {},
            disabled_plugins = {
                "gzip",
                "matchit",
                -- "matchparen",
                -- "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins, opts)
