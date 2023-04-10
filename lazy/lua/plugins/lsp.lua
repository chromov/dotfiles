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
}
