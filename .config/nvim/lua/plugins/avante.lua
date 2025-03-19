-- Customize avante.nvim

---@type LazySpec
return {
  "yetone/avante.nvim",
  opts = {
    provider = "openai",
    openai = {
      api_key_name = "OPENROUTER_API_KEY",
      endpoint = "https://openrouter.ai/api/v1",
      model = "anthropic/claude-3.7-sonnet",
    }
  },
}
