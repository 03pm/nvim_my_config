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

require("lazy").setup({
    {
        "nvim-neo-tree/neo-tree.nvim", -- список файлов проекта
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim"
        }
    },
    {
        "nvim-treesitter/nvim-treesitter", -- подсветка синтаксиса
        build = ":TSUpdate"
    },

    "neovim/nvim-lspconfig", -- конфиг для lsp клиента, которые втроен в nvim
    "williamboman/mason.nvim", -- менеджер пакетов
    "williamboman/mason-lspconfig.nvim", -- мост который соединяет lsp и менеджер пакетов
    "rebelot/kanagawa.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "windwp/nvim-autopairs",
    "windwp/nvim-ts-autotag",
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {
        'numToStr/Comment.nvim',
        opts = {
        },
        lazy = false,
    },
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {
    -- The three "core" operations of add/delete/change can be done with the keymaps ys{motion}{char}, ds{char}, and cs{target}{replacement}, respectively.
    "kylechui/nvim-surround", -- работа с тегами, ковычками, скобками
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
        end
    },
    {'kevinhwang91/nvim-ufo', version = "*", dependencies = 'kevinhwang91/promise-async'},
    {
        'barrett-ruth/live-server.nvim',
        build = 'pnpm add -g live-server',
        cmd = { 'LiveServerStart', 'LiveServerStop' },
        config = true
    },
    'andymass/vim-matchup', -- подсветка парных тегов и закрывающий элементов 
})
