return {
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
        },
      },
    },
  },
  {
    "mhanberg/elixir.nvim",
    ft = { "elixir" },
    config = function()
      local elixir = require("elixir")

      elixir.setup({
        cmd = "./elixirls.sh",
        settings = elixir.settings({
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
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
