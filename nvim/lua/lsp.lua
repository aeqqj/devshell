vim.lsp.enable({ 'bashls', 'clangd', 'cssls', 'dartls', 'docker-language-server', 'html', 'javascript', 'jsonls', 'lua_ls', 'marksman', 'tailwindcss', 'ts_ls' })

vim.lsp.config('clangd', {
    cmd = {
        "clangd",
        "--background-index",
        "--cross-file-rename",
        "--fallback-style=webkit",
        "--log=verbose",
    },
})

vim.lsp.config('dartls', {
    cmd = {
        "dart",
        "language-server",
    },
})
