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
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = {
      git = {
        enable = true,
      },

      renderer = {
        highlight_git = true
      }
    }
  },
  ["kyazdani42/nvim-web-devicons"] = {
    override_options = {
      override = {
        rb = {
          icon = "",
          name = "rb",
        },
      }
    }
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
  ["ckolkey/ts-node-action"] = {
    wants = "nvim-treesitter",
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  },
  ["neovim/nvim-lspconfig"] = false,
  ["williamboman/mason.nvim"] = false,
  ["lukas-reineke/indent-blankline.nvim"] = false
}
