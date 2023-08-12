require'nvim-treesitter.configs'.setup({
    ensure_installed = { "lua", "python", "vimdoc",
    "vim", "javascript", "html", "gitignore"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
    autotag = {enable = true },
})
