vim.lsp.enable({ 'bashls', 'clangd', 'cssls', 'jsonls', 'lua_ls', 'pyright', 'tailwindcss', 'ts_ls', 'yamlls' })

vim.lsp.config('clangd', {
    cmd = {
        "clangd",
        "--background-index",
        "--cross-file-rename",
        "--fallback-style=webkit",
        "--log=verbose",
    },
})
