return {
  {
    "jackMort/ChatGPT.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
    event = "VeryLazy",
    opts = function(_, opts)
      opts.api_key_cmd = vim.fn.has("macunix") == 1
        and "security find-generic-password -l openai_api_key -w"
        or  "pass show openai_api_key"
      opts.openai_params = {
        model = "gpt-4o"
      }
      opts.openai_edit_params = {
        model = "gpt-4o"
      }
      return opts
    end,
  },
}
