-- set shorter name for keymap function
local kmap = vim.keymap.set

-- F5 processes the document once, and refreshes the view
kmap({ 'n', 'v', 'i' },'<F5>', function() require("knap").process_once() end)

-- F6 closes the viewer application, and allows settings to be reset
kmap({ 'n', 'v', 'i' },'<F6>', function() require("knap").close_viewer() end)

-- F7 toggles the auto-processing on and off
kmap({ 'n', 'v', 'i' },'<F7>', function() require("knap").toggle_autopreviewing() end)

-- F8 invokes a SyncTeX forward search, or similar, where appropriate
kmap({ 'n', 'v', 'i' },'<F8>', function() require("knap").forward_jump() end)

--local gknapsettings = {
--    texoutputext = "pdf",
--    textopdf = "pdflatex -synctex=1 -halt-on-error -interaction=batchmode %docroot%",
--    textopdfviewerlaunch = "mupdf %outputfile%",
--    textopdfviewerrefresh = "kill -HUP %pid%"
--}
--vim.g.knap_settings = gknapsettings
local plugins = {
  {
    "frabjous/knap"
  },
  {
	   "L3MON4D3/LuaSnip",
	  -- follow latest release.
	  version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	  -- install jsregexp (optional!).
	  build = "make install_jsregexp"
  },
  {
    "wakatime/vim-wakatime",
     event = 'VeryLazy'
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, opts)
    require("core.utils").load_mappings("dap")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
    local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
    require("dap-python").setup(path)
    require("core.utils").load_mappings("dap")
    end,
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = 'williamboman/mason.nvim',
    ft = {"python"},
    event = { 'BufReadPre', 'BufNewFile' },
    opts = function()
      local nls = require('null-ls')
      return {
          sources = {
            nls.builtins.formatting.stylua,
            nls.builtins.formatting.markdownlint,
            nls.builtins.diagnostics.markdownlint,
            --nls.builtins.diagnostics.luacheck,
          },
      }
    end,
  },

  --{
  --  "jose-elias-alvarez/null-ls.nvim",
  --  ft = {"python"},
  --  opts = function()
  --    require "custom.configs.null-ls"
  --  end,
  --},
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "mypy",
        "ruff",
        "pyright",
      },
    },
  },
  {
      "neovim/nvim-lspconfig",
      config = function()
          require "plugins.configs.lspconfig"
          require "custom.configs.lspconfig"
      end,
  },
}
return plugins

