-- Allow clipboard copy paste with macOS key combinations
vim.g.neovide_input_use_logo = 1

vim.api.nvim_set_keymap('n', '<D-c>', '"*yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-v>', '"*p',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-x>', '"*dd', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<D-v>', '<C-R>*', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '<D-c>', '"*y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '"*P', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-x>', '"*d', { noremap = true, silent = true })

-- Toggle terminal to normal mode with Esc
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

return {
  lsp = {
    formatting = {
      format_on_save = false,
    }
  }
}
