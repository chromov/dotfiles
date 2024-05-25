return {
  {
    "taybart/b64.nvim",
    keys = {
      {
        "<leader>be",
        ":<c-u>lua require('b64').encode()<CR>",
        desc = "Base64 encode",
        mode = "v",
        silent = true,
        remap = false,
      },
      {
        "<leader>bd",
        ":<c-u>lua require('b64').decode()<CR>",
        desc = "Base64 decode",
        mode = "v",
        silent = true,
        remap = false,
      },
    },
  },
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
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
  {
    "ckolkey/ts-node-action",
    dependencies = { "nvim-treesitter" },
    keys = {
      {
        "<leader>k",
        function()
          require("ts-node-action").node_action()
        end,
        desc = "Trigger Node Action",
      },
    },
  },
  { "elixir-editors/vim-elixir" },
  {
    "vim-test/vim-test",
    keys = {
      { "<leader>tn", ":TestNearest<CR>", desc = "run nearest test" },
      { "<leader>tf", ":TestFile<CR>", desc = "run file tests" },
      { "<leader>tl", ":TestLast<CR>", desc = "run last test" },
    },
  },
  {
    "tpope/vim-fugitive",
    keys = {
      { "<leader>gb", ":Git blame<CR>", desc = "git blame", remap = false },
    },
  },
  {
    "andymass/vim-matchup",
    -- setup = function()
    --   vim.g.matchup_matchparen_offscreen = { method = "popup" }
    -- end,
  },
  {
    "JellyApple102/flote.nvim",
    cmd = "Flote",
    keys = {
      { "<leader>fm", "<cmd>Flote<CR>", "Open project notes" },
      { "<leader>fM", "<cmd>Flote global<CR>", "Open global notes" },
    },
    config = function()
      require("flote").setup({
        window_title = false,
      })
    end,
  },
}
