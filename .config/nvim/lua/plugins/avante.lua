-- Customize avante.nvim

---@type LazySpec
return {
  "yetone/avante.nvim",
  opts = {
    provider = "openrouter",
    providers = {
      openrouter = {
        __inherited_from = 'openai',
        api_key_name = "OPENROUTER_API_KEY",
        endpoint = "https://openrouter.ai/api/v1",
        model = "anthropic/claude-sonnet-4",
      }
    },
  },
}
