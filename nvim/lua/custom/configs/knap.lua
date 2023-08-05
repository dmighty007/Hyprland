-- Run compilation on start
vim.cmd[[
:autocmd BufNewFile,BufRead *.tex VimtexCompile
]]

-- Basic settings
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>', '<nop>', { noremap = true, silent = true })
vim.cmd[[let mapleader=" "]]
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = false
vim.opt.number = true
vim.opt.clipboard = 'unnamedplus'


-- Live compilation
vim.g.vimtex_compiler_latexmk = {
    build_dir = '.out',
    options = {
        '-shell-escape',
        '-verbose',
        '-file-line-error',
        '-interaction=nonstopmode',
        '-synctex=1'
    }
}
vim.g.vimtex_view_method = 'zathura'

