local util = require("lspconfig.util")

return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters.sqlfluff = {
        args = { "format", "--dialect=postgres", "-" },
      }
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters.sqlfluff = {
        args = { "lint", "--dialect=postgres", "-" },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        solargraph = {
          mason = false,
          cmd = {
            "./rubyls.sh",
          },
          root_dir = util.root_pattern("rubyls.sh"),
        },
      },
    },
  },
  {
    "elixir-tools/elixir-tools.nvim",
    ft = { "elixir" },
    enabled = false,
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup({
        credo = { enable = false },
        elixirls = {
          cmd = "./elixirls.sh",
          settings = elixirls.settings({
            dialyzerEnabled = false,
          }),
          log_level = vim.lsp.protocol.MessageType.Log,
          message_level = vim.lsp.protocol.MessageType.Log,
          on_attach = function()
            require("which-key").register({
              cp = {
                name = "+pipe",
                f = { "<cmd>ElixirFromPipe<cr>", "from" },
                t = { "<cmd>ElixirToPipe<cr>", "to" },
              },
            }, { prefix = "<leader>" })
          end,
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
