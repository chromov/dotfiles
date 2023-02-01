local M = {}

M.mouse_helper = {
  v = {
    ["<LeftRelease>"] = { "\"*ygv", "auto copy mouse selection", {remap = false} },
    ["<2-LeftRelease>"] = { "\"*ygv", "auto copy mouse selection", {remap = false} }
  }
}

M.general = {
  n = {
    ["<CR>"] = { ":nohlsearch<CR><CR>", "clear hl", {silent = true, remap = false} },
    ["<C-x>"] = { ":qall<CR>", "quit all", {remap = false} }
  }
}

M.tree = {
  n = {
    ["<leader>e"] = { ":NvimTreeToggle<CR>", "toggle tree" }
  }
}

M.fugitive = {
  n = {
    ["<leader>gs"] = { ":above Git<CR>", "git status", {remap = false} },
    ["<leader>gb"] = { ":Git blame<CR>", "git blame", {remap = false} },
    ["<leader>gB"] = { ":GBrowse<CR>", "git browse", {remap = false} },
    ["<leader>gd"] = { ":Gdiffsplit<CR>", "git diff", {remap = false} }
  }
}

M.telescope = {
  n = {
    ["<leader>fb"] = { "<cmd> Telescope buffers sort_mru=true <CR>", "find buffers" },
    ["<C-b>"] = { "<cmd> Telescope buffers sort_mru=true <CR>", "find buffers" },
    ["<leader>fd"] = { "<cmd> Telescope grep_string <CR>", "find word" },
  }
}

M.node_action = {
  n = {
    ["K"] = { require("ts-node-action").node_action, "trigger node action" }
  }
}

M.b64 = {
  v = {
    ["<leader>be"] = { ":<c-u>lua require('b64').encode()<CR>", "Base64 encode", {silent = true, remap = false} },
    ["<leader>bd"] = { ":<c-u>lua require('b64').decode()<CR>", "Base64 decode", {silent = true, remap = false} }
  }
}

M.nvterm = {
  t = {
    ["<leader>tt"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
  n = {
    ["<leader>tt"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  }
}

M.spectre = {
  n = {
    ["<leader>S"] = { "<cmd>lua require('spectre').open()<CR>", "search and replace", {remap = false} }
  }
}

return M
