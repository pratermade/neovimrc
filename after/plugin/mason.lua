require("mason").setup({
    opts = {
        ensure_installed = {
            "gopls",
            "lua-language-server",
        }
    }
})
