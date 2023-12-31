-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("Comment").setup({

  ---Add a space b/w comment and the line
  padding = true,
  ---Whether the cursor should stay at its position
  sticky = true,
  ---Lines to be ignored while (un)comment
  ignore = nil,
  ---LHS of toggle mappings in NORMAL mode
  toggler = {
    ---Line-comment toggle keymap
    line = "gc",
    ---Block-comment toggle keymap
    block = "gbc",
  },
  ---LHS of operator-pending mappings in NORMAL and VISUAL mode
  opleader = {
    ---Line-comment keymap
    line = "gc",
    ---Block-comment keymap
    block = "gb",
  },
  ---LHS of extra mappings
  extra = {
    ---Add comment on the line above
    above = "gcO",
    ---Add comment on the line below
    below = "gco",
    ---Add comment at the end of line
    eol = "gcA",
  },
  ---Enable keybindings
  ---NOTE: If given `false` then the plugin won't create any mappings
  mappings = {
    ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
    basic = true,
    ---Extra mapping; `gco`, `gcO`, `gcA`
    extra = true,
  },
  -- Function to call before (un)comment
  -- pre_hook = nil,
  -- Function to call after (un)comment
  -- post_hook = nil,
})
vim.cmd("colorscheme tokyonight-night")
-- require("notify").setup({
--   background_colour = "#000000",
-- })
--vim.cmd(autocmd BufNewFile,BufRead *.gro set ft=gro)
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  desc = "Set filetype for SSH config directory",
  pattern = "*.gro",
  command = "set filetype=gro",
})
vim.g["tex_flavor"] = "latex"
vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.list = false -- extra option I set in addition to the ones in your question
