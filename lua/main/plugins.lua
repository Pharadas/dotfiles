-- This file can be loaded by calling `lua ('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return ('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'mg979/vim-visual-multi'

  use 'terrortylor/nvim-comment'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'pacokwon/onedarkhc.vim' })

  use ({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

    -- Lua
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      ("which-key").setup {
           keys = {
              ["("] = { escape = false, close = true, pair = "()" },
              ["["] = { escape = false, close = true, pair = "[]" },
              ["{"] = { escape = false, close = true, pair = "{}" },

              [">"] = { escape = true, close = false, pair = "<>" },
              [")"] = { escape = true, close = false, pair = "()" },
              ["]"] = { escape = true, close = false, pair = "[]" },
              ["}"] = { escape = true, close = false, pair = "{}" },

              ['"'] = { escape = true, close = true, pair = '""' },
              ["'"] = { escape = true, close = true, pair = "''" },
              ["`"] = { escape = true, close = true, pair = "``" },
           },
           options = {
              disabled_filetypes = { "text" },
              disable_when_touch = true,
              touch_regex = "[%w(%[{]",
              pair_spaces = false,
              auto_indent = true,
              disable_command_mode = false,
           },
      }
    end
  }

  use {
  	  'VonHeikemen/lsp-zero.nvim',
  	  branch = 'v1.x',
  	  requires = {
  		  -- LSP Support
  		  {'neovim/nvim-lspconfig'},
  		  {'williamboman/mason.nvim'},
  		  {'williamboman/mason-lspconfig.nvim'},
  
  		  -- Autocompletion
  		  {'hrsh7th/nvim-cmp'},
  		  {'hrsh7th/cmp-buffer'},
  		  {'hrsh7th/cmp-path'},
  		  {'saadparwaiz1/cmp_luasnip'},
  		  {'hrsh7th/cmp-nvim-lsp'},
  		  {'hrsh7th/cmp-nvim-lua'},
  
  		  -- Snippets
  		  {'L3MON4D3/LuaSnip'},
  		  {'rafamadriz/friendly-snippets'},
  	  }
    }

    use {"ray-x/lsp_signature.nvim"}

    use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
      }

    use {'m4xshen/autoclose.nvim'}

    use {'tikhomirov/vim-glsl'}

    use {'tpope/vim-surround'}
    -- use 'daeyun/vim-matlab'
end)
