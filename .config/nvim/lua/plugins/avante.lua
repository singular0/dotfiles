-- Customize avante.nvim

---@type LazySpec
return {
  "yetone/avante.nvim",
  opts = {
    provider = "claude_sonnet_4",
    behaviour = {
      enable_cursor_planning_mode = true,
    },
    providers = {
      claude_sonnet_4 = {
        __inherited_from = "openai",
        api_key_name = "OPENROUTER_API_KEY",
        endpoint = "https://openrouter.ai/api/v1",
        model = "anthropic/claude-sonnet-4",
      },
    },
  },
}
