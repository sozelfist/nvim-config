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

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- Place to add languages extras and their plugins
    -- add Rust extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.rust" },
    -- add Python extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.python" },
    -- add Go extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.go" },
    -- add Scala extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.scala" },
    -- add Java extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.java" },
    -- add Docker extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.docker" },
    -- add Markdown extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.markdown" },
    -- add Yaml extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.yaml" },
    -- add CMake extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.cmake" },
    -- add Haskell extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.haskell" },
    -- add TypeScript extras and import its plugins
    { import = "lazyvim.plugins.extras.lang.typescript" },
    -- Place to add plugins extras and their plugins
    { import = "lazyvim.plugins.extras.editor.outline" },
    -- add nvim-dap extras and import its plugins
    { import = "lazyvim.plugins.extras.dap.core" },
    -- add nvim-dap adaptor for lua and import its plugins
    { import = "lazyvim.plugins.extras.dap.nlua" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
