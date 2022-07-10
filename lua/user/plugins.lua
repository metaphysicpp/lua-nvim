local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

pcall(require, "impatient") --run :LuaCacheClear

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "kyazdani42/nvim-web-devicons"
  use {"kyazdani42/nvim-tree.lua",
        config = function ()
          require("user.nvim-tree")
        end,
        cmd = { 'NvimTreeOpen', 'NvimTreeToggle' },
        after = { "nvim-web-devicons" },
      }
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"
  use {"nvim-lualine/lualine.nvim",  -- statusline
        after = { "nvim-web-devicons", "gitsigns.nvim"},
      }
  use "akinsho/toggleterm.nvim" -- A terminal in neovim
  use "lewis6991/impatient.nvim" -- Speed up loading Lua modules in Neovim to improve startup time
  use "lukas-reineke/indent-blankline.nvim" -- adds indentation guide to all lines
  use "dstein64/vim-startuptime" -- profiling Nvim's startuptime

  -- Colorschemes
  use "shaunsingh/nord.nvim"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use {"williamboman/nvim-lsp-installer", -- simple to use language server installer
        event = { "InsertEnter", "CursorMoved"}
      }
  -- use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"


  -- Git
  use {"lewis6991/gitsigns.nvim", -- git commit sign
        event = { "BufRead", "BufNewFile" },
      }


  -- Autosave
  use "Pocco81/AutoSave.nvim"

  -- Alpha - a fully customizable greeter for neovim
  use "goolord/alpha-nvim"


  -- Which-Key
  use "folke/which-key.nvim"

  -- Markdown preview
  use "iamcco/markdown-preview.nvim"













  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
