require("keymaps")
require("options")
require("lsp")

vim.pack.add({
	"https://github.com/Saghen/blink.cmp",
    "https://github.com/saghen/blink.lib",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/nvim-mini/mini.pick",
	"https://github.com/christoomey/vim-tmux-navigator",
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/mattn/emmet-vim",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/stevearc/conform.nvim",
    "https://github.com/bluz71/vim-moonfly-colors",
})

require("blink.cmp").setup({
	fuzzy = {
		implementation = "lua",
	},
})

require("conform").setup({
	formatters_by_ft = {
		["*"] = { "codespell" },
		["_"] = { "trim_whitespace" },
		bash = { "shfmt" },
		c = { "clang-format" },
		css = { "prettier" },
		javascript = { "prettier" },
		json = { "prettier" },
		lua = { "stylua" },
		python = { "ruff" },
		toml = { "prettier" },
		typescript = { "prettier" },
		yaml = { "prettier" },
	},
})
require("oil").setup()
require("mini.pick").setup()
require("mason").setup()
require("mason-tool-installer").setup({
	ensure_installed = {
		"bash-language-server",
		"black",
		"codespell",
		"clangd",
		"css-lsp",
        -- "csharp-language-server",
		"eslint-lsp",
		"json-lsp",
		"lua-language-server",
		"prettier",
		"pyright",
		"ruff",
		"stylua",
		"tailwindcss-language-server",
		"typescript-language-server",
		"yaml-language-server",
	},
})
require("nvim-treesitter").install({
	"bash",
    "dockerfile",
	"javascript",
	"json",
	"lua",
	"markdown",
	"toml",
	"typescript",
	"yaml",
})

vim.o.pumborder = "single"
vim.g.moonflyNormalPmenu = true
vim.g.moonflyNormalFloat = true
vim.cmd("colorscheme moonfly")
vim.cmd(":hi statusline guibg=NONE")

vim.g.user_emmet_leader_key = "<C-E>"

-- vim.api.nvim_set_hl(0, "MiniPickNormal", { bg = "#101010" })
-- vim.api.nvim_set_hl(0, "MiniPickBorder", { bg = bg, fg = "#444444" })
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "bash", "javascript", "json", "lua", "markdown", "typescript", "yaml" },
	callback = function()
		vim.treesitter.start()
	end,
})
