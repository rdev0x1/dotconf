-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- add onedark
  {
    "navarasu/onedark.nvim",
    lazy = false,
    opts = {
      colorscheme = "onedark",
      style = "dark",
      transparent = true,
      ending_tildes = true,
    },
  },

  -- Configure LazyVim to load onedark
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },

  -- Needed for transparency support
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
}
