" lua << EOF
" require('nvim-treesitter.configs').setup {
"     ensure_installed = { "norg" },
"     highlight = { -- Be sure to enable highlights if you haven't!
"         enable = true,
"     }
" }

" require('neorg').setup {
"     load = {
"         ["core.defaults"] = {},
"         ["core.norg.dirman"] = {
"             config = {
"                 workspaces = {
"                     work = "~/notes/work",
"                 }
"             }
"         }
"     }
" }
" EOF
