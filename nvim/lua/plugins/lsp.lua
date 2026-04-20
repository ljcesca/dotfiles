return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        mason = false,
        cmd = { vim.fn.system("asdf where golang") .. "/bin/gopls" },
      },
      goimports = {
        mason = false,
        cmd = { vim.fn.system("asdf where golang") .. "/bin/goimports" },
      },
      gofumpt = {
        mason = false,
        cmd = { vim.fn.system("asdf where golang") .. "/bin/gofumpt" },
      },
    },
  },
}
