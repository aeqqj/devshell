vim.lsp.enable({ 'bashls', 'clangd', 'cssls', 'docker-language-server', 'html', 'javascript', 'jsonls', 'lua_ls', 'tailwindcss', 'ts_ls' })

vim.lsp.config('clangd', {
    cmd = {
        "clangd",
        "--background-index",
        "--cross-file-rename",
        "--fallback-style=webkit",
        "--log=verbose",
    },
})
