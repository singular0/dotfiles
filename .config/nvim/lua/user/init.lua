if vim.g.neovide then
  -- Allow clipboard copy paste with macOS key combinations
  vim.g.neovide_input_use_logo = 1

  -- Open in fullscreen mode
  vim.g.neovide_fullscreen = true
end

vim.api.nvim_set_keymap('n', '<D-c>', '"*yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-v>', '"*p',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-x>', '"*dd', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<D-v>', '<C-R>*', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '<D-c>', '"*y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '"*P', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-x>', '"*d', { noremap = true, silent = true })

vim.api.nvim_set_keymap('t', '<D-v>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Toggle terminal to normal mode with Esc
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

return {
  -- Disable LSP format on save
  lsp = {
    formatting = {
      format_on_save = false,
    },
  },
  plugins = {
    {
      "folke/todo-comments.nvim",
        event = "User Astrofile",
        config = function()
          require("todo-comments").setup()
        end,
    },
    {
      "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        config = function()
          require("chatgpt").setup({
            api_key_cmd = "security find-generic-password -l openai_api_key -w"
          })
        end,
        dependencies = {
          "MunifTanjim/nui.nvim",
          "nvim-lua/plenary.nvim",
          "nvim-telescope/telescope.nvim"
        },
    },
  }
}

