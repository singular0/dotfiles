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
      opts.api_key_cmd = "security find-generic-password -l openai_api_key -w"
      return opts
    end,
  },
}
