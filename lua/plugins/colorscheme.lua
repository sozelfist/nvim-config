return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      -- transparent_mode = true,
      inverse = false,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
