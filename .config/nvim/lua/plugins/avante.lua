return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false,
    opts = {
      behaviour = {
        auto_suggestions = false,
      },
      provider = "openrouter",
      vendors = {
        ---@type AvanteProvider
        openrouter = {
          endpoint = "https://openrouter.ai/api/v1",
          model = "anthropic/claude-3.5-sonnet",
          api_key_name = "OPENROUTER_API_KEY",
          ---@type fun(opts: AvanteProvider, code_opts: AvantePromptOptions): AvanteCurlOutput
          parse_curl_args = function(opts, code_opts)
            return {
              url = opts.endpoint .. "/chat/completions",
              headers = {
                ["Authorization"] = "Bearer " .. opts.parse_api_key(),
                ["Content-Type"] = "application/json",
              },
              body = {
                model = opts.model,
                messages = require("avante.providers").openai.parse_message(code_opts),
                stream = true,
              },
            }
          end,
          ---@type fun(data_stream: string, event_state: string, opts: ResponseParser): nil
          parse_response_data = function(data_stream, event_state, opts)
            require("avante.providers").openai.parse_response(data_stream, event_state, opts)
          end,
        },
        ---@type AvanteProvider
        ollama = {
          ["local"] = true,
          endpoint = "http://localhost:11434/api",
          model = "llama3.2",
          ---@type fun(opts: AvanteProvider, code_opts: AvantePromptOptions): AvanteCurlOutput
          parse_curl_args = function(opts, code_opts)
            return {
              url = opts.endpoint .. "/chat",
              headers = {
                ["Content-Type"] = "application/json",
              },
              body = {
                model = opts.model,
                messages = require("avante.providers").copilot.parse_message(code_opts),
                stream = true,
              },
            }
          end,
          ---@type fun(data_stream: string, event_state: string, opts: ResponseParser): nil
          parse_response_data = function(data_stream, event_state, opts)
            require("avante.providers").openai.parse_response(data_stream, event_state, opts)
          end,
        },
      },
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to setup it properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
