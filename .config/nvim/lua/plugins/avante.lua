-- Customize avante.nvim

---@type LazySpec
return {
  "yetone/avante.nvim",
  opts = {
    provider = "openrouter/grok-code-fast-1",
    behaviour = {
      enable_fastapply = true,
    },
    providers = {
      ["morph"] = {
        __inherited_from = "openai",
        api_key_name = "OPENROUTER_API_KEY",
        endpoint = "https://openrouter.ai/api/v1",
        model = "morph/morph-v3-large",
      },
      ["openrouter/grok-code-fast-1"] = {
        __inherited_from = "openai",
        api_key_name = "OPENROUTER_API_KEY",
        endpoint = "https://openrouter.ai/api/v1",
        model = "x-ai/grok-code-fast-1",
        max_tokens = 256000,
      },
      ["openrouter/claude-sonnet-4"] = {
        __inherited_from = "openai",
        api_key_name = "OPENROUTER_API_KEY",
        endpoint = "https://openrouter.ai/api/v1",
        model = "anthropic/claude-sonnet-4",
        max_tokens = 200000,
      },
      ["openrouter/qwen3-coder"] = {
        __inherited_from = "openai",
        api_key_name = "OPENROUTER_API_KEY",
        endpoint = "https://openrouter.ai/api/v1",
        model = "qwen/qwen3-coder",
        max_tokens = 262000,
      },
    },
  },
}
