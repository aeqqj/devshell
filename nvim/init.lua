require('keymaps')
require('options')
require('lsp')

vim.pack.add({
    -- "https://github.com/slugbyte/lackluster.nvim",
    "https://github.com/Saghen/blink.cmp",
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/nvim-mini/mini.pick",
    "https://github.com/christoomey/vim-tmux-navigator",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/mattn/emmet-vim",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/stevearc/conform.nvim",
    "https://github.com/vague-theme/vague.nvim",
})

require('blink.cmp').setup({
    fuzzy = {
        implementation = "lua"
    },
})
require('conform').setup({
    formatters_by_ftformatters_by_ft = {
        ["*"] = { "codespell" },
        ["_"] = { "trim_whitespace" },
        lua = { "stylua" },
    },
})
require('oil').setup()
require('mini.pick').setup()
require('mason').setup()
require('nvim-treesitter').install({
    'bash', 'c', 'css', 'dart', 'dockerfile', 'html', 'javascript', 'json', 'lua', 'typescript'
})
-- require('lackluster').setup({
--     tweak_background = {
--         normal = "#101010",
--     }
-- })
require('vague').setup({
    colors = {
        bg = "#101010",
    },
})

vim.cmd('colorscheme vague')
vim.cmd(':hi statusline guibg=NONE')
vim.g.user_emmet_leader_key = '<C-E>'
vim.api.nvim_set_hl(0, "MiniPickNormal", { bg = "#101010" })
vim.api.nvim_set_hl(0, "MiniPickBorder", { bg = bg, fg = "#444444" })
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'markdown', 'c', 'javascript', 'typescript' },
    callback = function() vim.treesitter.start() end,
})
