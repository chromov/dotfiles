return {
  { "taybart/b64.nvim" },
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup({})
    end,
  },
  {
    "ruifm/gitlinker.nvim",
    config = function()
      require("gitlinker").setup({
        opts = {
          add_current_line_on_normal_mode = false,
        },
        callbacks = {
          ["code.innocode.dev"] = require("gitlinker.hosts").get_gitlab_type_url,
        },
      })
    end,
  },
}
