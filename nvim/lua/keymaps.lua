local opts = { noremap = false, silent = false }

vim.g.mapleader = " "

-- source
vim.keymap.set('n', '<leader>u', ':update<CR> :source<CR>')
-- oil
vim.keymap.set('n', '<leader>e', ':Oil<CR>')

-- mini.pick
vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')
vim.keymap.set('n', '<leader>fg', ':Pick grep<CR>')

-- mini.pick help
vim.keymap.set('n', '<leader>h', ':Pick help<CR>')

-- mason
vim.keymap.set('n', 'm', ':Mason<CR>')

-- format
vim.keymap.set('n', '<leader>lf', function()
    require('conform').format({ async = true, lsp_fallback = true })
end)

-- delete without saving
vim.keymap.set('n', 'x', '"_x')

-- clear highlights (search)
vim.keymap.set("n", "<leader>ch", ":nohl<CR>")

-- center after search
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- zk
vim.api.nvim_set_keymap("n", "<leader>zn", ":ZkNew { title = vim.fn.input('Title: ') }<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>zt", "<Cmd>ZkTags<CR>", opts)
