-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
	   {
      "neanias/everforest-nvim",
      priority = 1000, -- Load before everything else
      lazy = false,    -- Load immediately during startup
      config = function()
        require("everforest").setup({
          -- Optional settings:
          background = "soft", -- "hard" | "medium" | "soft"
          transparent_background = false,
          disable_italic_comments = false,
        })
        vim.o.background = "dark" -- or "light"
        vim.cmd("colorscheme everforest")
      end,
    },

    {
  'nvim-telescope/telescope.nvim', tag='0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
    }},
    {
'nvim-tree/nvim-tree.lua',
      dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional for file icons
      config = function()
        -- Recommended settings
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup()

        -- Keymap to toggle NvimTree
        vim.keymap.set('n', '<C-n>', ':NvimTreeFindFileToggle<CR>', { noremap = true, silent = true })
      end,
    },
    {
      'nvim-lualine/lualine.nvim',
       dependencies = { 'nvim-tree/nvim-web-devicons' },
      config = function()
        require('lualine').setup {
          options = {
            icons_enabled = true,
            theme = 'nightfly',
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
          },
          sections = {
            lualine_a = {
              {
                'filename',
                path = 1,
              }
            },
            lualine_b = { 'branch' },
            lualine_c = { 'diff' },
            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
          },
        }
      end,
    }
    -- add your plugins here
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "everforest" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
