return {
  ["andymass/vim-matchup"] = {},
  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        overriden_modules = function()
          return require "custom.abc"
        end,
      },
      tabufline = {
        enabled = false
      }
    }
  },
  -- ["nvim-tree/nvim-tree.lua"] = {
  --   override_options = {
  --     git = {
  --       enable = true,
  --     },
  --
  --     renderer = {
  --       highlight_git = true
  --     }
  --   }
  -- },
  -- ["nvim-tree/nvim-web-devicons"] = {
  --   override_options = {
  --     override = {
  --       rb = {
  --         icon = "",
  --         name = "rb",
  --       },
  --     }
  --   }
  -- },
  ["windwp/nvim-spectre"] = {
    wants = "nvim-lua/plenary.nvim",
  },
  ["taybart/b64.nvim"] = {},
  ["rcarriga/nvim-notify"] = {},
  ["tpope/vim-fugitive"] = {},
  ["shumphrey/fugitive-gitlab.vim"] = {},
  ["ruifm/gitlinker.nvim"] = {
    wants = "nvim-lua/plenary.nvim",
    config = function()
      require("gitlinker").setup({
        -- opts = {
        --   add_current_line_on_normal_mode = false
        -- },
        callbacks = {
          ["code.innocode.dev"] = require("gitlinker.hosts").get_gitlab_type_url
        }
      })
    end,
  },
  ["sindrets/diffview.nvim"] = {
    wants = "nvim-lua/plenary.nvim",
  },
  ["ckolkey/ts-node-action"] = {
    wants = "nvim-treesitter",
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      indent = {
        enable = true,
        disable = {"ruby"}
      }
    }
  },

  ["NvChad/nvterm"] = {
    override_options = {
      terminals = {
        type_opts = {
          float = {
            relative = "editor",
            row = 0.05,
            col = 0.1,
            width = 0.8,
            height = 0.8,
            border = "single",
          },
        },
      },
    }
  },
  ["lspcontainers/lspcontainers.nvim"] = {},
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      -- require "custom.plugins.lspconfig"
    end,
  },
  ["williamboman/mason.nvim"] = false,
  ["lukas-reineke/indent-blankline.nvim"] = false
}
