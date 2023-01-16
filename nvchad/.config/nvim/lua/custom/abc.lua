local st_modules = require "nvchad_ui.statusline.modules"

return {
   mode = function()
      local stateTxt = vim.api.nvim_buf_get_option(0, 'modified') and "" or ""
      return st_modules.mode() .. "%#St_file_info#" .. stateTxt
   end,
}
