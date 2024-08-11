require'nvim-treesitter.configs'.setup({
    ensure_installed = { "lua", "python", "vimdoc",
    "vim", "javascript", "html", "gitignore", "markdown", "markdown_inline", "css", "gitcommit", "ini", "typescript", "toml", "xml"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})
