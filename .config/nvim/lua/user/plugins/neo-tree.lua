return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.bind_to_cwd = true
      return opts
    end,
  }
}
