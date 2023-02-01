vim.g.matchup_matchparen_offscreen = { method = "popup" }
vim.opt.title = true
vim.opt.whichwrap = ""
vim.opt.wrap = false
vim.notify = require("notify")
vim.cmd 'autocmd BufRead,BufNewFile *.eex set filetype=eex'
