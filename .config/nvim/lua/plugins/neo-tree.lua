return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      bind_to_cwd = true,
      filesystem = {
        filtered_items = {
          hide_gitignored = true,
        },
      },
    },
  }
}
