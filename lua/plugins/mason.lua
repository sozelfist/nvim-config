-- add any tools you want to have installed below
return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "rust-analyzer",
      "pyright",
      "gopls",
      "zls",
      "clangd",
      "cmakelang",
      "cmakelint",
      "dockerfile-language-server",
      "docker-compose-language-service",
    },
    ui = {
      icons = {
        package_pending = " ",
        package_installed = " ",
        package_uninstalled = " ",
      },
    },
  },
}
