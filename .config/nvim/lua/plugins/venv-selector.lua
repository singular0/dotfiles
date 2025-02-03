-- Customize venv-selector.nvim

---@type LazySpec
return {
  'linux-cultist/venv-selector.nvim',
  opts = {
    auto_refresh = true,
    name = { '.venv', 'venv' },
  },
}
