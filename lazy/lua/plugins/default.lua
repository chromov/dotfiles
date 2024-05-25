return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "ruby",
        "elixir",
      },
      indent = {
        enable = true,
        disable = { "ruby", "elixir", "eex", "eelixir" },
      },
      highlight = {
        enable = true,
        disable = { "ruby", "elixir", "eex", "eelixir" },
      },
    },
  },
  { "folke/flash.nvim", enabled = false }, -- disable search labels
  { "akinsho/bufferline.nvim", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  {
    "echasnovski/mini.comment",
    lazy = false,
    opts = {
      mappings = {
        comment = "<leader>/",
        comment_line = "<leader>/",
        comment_visual = "<leader>/",
      },
    },
  },
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        progress = {
          enabled = false,
        },
      },
    },
  },
  {
    "SmiteshP/nvim-navic",
    opts = function()
      return {
        separator = " ",
        highlight = true,
        depth_limit = 5,
        -- icons = require("lazyvim.config").icons.kinds,
      }
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      local icons = require("lazyvim.config").icons

      local function fg(name)
        return function()
          ---@type {foreground?:number}?
          local hl = vim.api.nvim_get_hl_by_name(name, true)
          return hl and hl.foreground and { fg = string.format("#%06x", hl.foreground) }
        end
      end

      return {
        options = {
          theme = "gruvbox-material",
          globalstatus = true,
          disabled_filetypes = { statusline = { "dashboard", "lazy", "alpha" } },
          component_separators = "",
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = {
            { "filename", path = 1, symbols = { modified = "  ", readonly = " [-]", unnamed = "" } },
            -- { "%=" },
            -- stylua: ignore
            -- {
            --   function() return require("nvim-navic").get_location() end,
            --   cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
            -- },
          },
          lualine_c = {
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
          },
          lualine_x = {
            -- stylua: ignore
            {
              function() return require("noice").api.status.command.get() end,
              cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
              color = fg("NonText"),
            },
            -- stylua: ignore
            {
              function() return require("noice").api.status.mode.get() end,
              cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
              color = fg("Statement"),
            },
            -- stylua: ignore
            {
              function() return require("noice").api.status.search.get() end,
              cond = function() return package.loaded["noice"] and require("noice").api.status.search.has() end,
              color = fg("Constant"),
            },
            { require("lazy.status").updates, cond = require("lazy.status").has_updates, color = fg("Special") },
          },
          lualine_y = {
            { "branch", icon = "" },
            {
              "diff",
              symbols = {
                added = icons.git.added,
                modified = icons.git.modified,
                removed = icons.git.removed,
              },
            },
            { "filetype" },
          },
          lualine_z = {
            {
              "location",
              separator = " ",
              padding = { left = 1, right = 0 },
              icon = "󰦨",
              color = { fg = "#383838", gui = "bold" },
            },
            {
              "progress",
              padding = { left = 0, right = 1 },
              color = { fg = "#383838", gui = "bold" },
            },
          },
        },
        extensions = { "neo-tree" },
      }
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
    keys = {
      { "<leader>/", false },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        jsonls = { mason = false },
      },
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {
        rb = {
          icon = "",
          color = "#cf445b",
          cterm_color = "52",
          name = "rb",
        },
        rakefile = {
          icon = "",
          color = "#cf445b",
          cterm_color = "52",
          name = "Rakefile",
        },
        rake = {
          icon = "",
          color = "#cf445b",
          cterm_color = "52",
          name = "Rake",
        },
        ["config.ru"] = {
          icon = "",
          color = "#cf445b",
          cterm_color = "52",
          name = "ConfigRu",
        },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      -- enable_git_status = false,
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added = "",
            deleted = "",
            modified = "",
            renamed = "",
            -- Status type
            untracked = "",
            ignored = "",
            unstaged = "",
            staged = "",
            conflict = "",
          },
        },
      },
    },
  },
  { "echasnovski/mini.pairs", enabled = false },

  -- Use <tab> for completion and snippets (supertab)
  -- first: disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  -- then: setup supertab in cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local function border(hl_name)
        return {
          { "╭", hl_name },
          { "─", hl_name },
          { "╮", hl_name },
          { "│", hl_name },
          { "╯", hl_name },
          { "─", hl_name },
          { "╰", hl_name },
          { "│", hl_name },
        }
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.completion = {
        completeopt = "menu,menuone,noselect",
      }

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- they way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },
}
