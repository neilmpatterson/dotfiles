local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "packer.plugins.lsp.mason"
require("packer.plugins.lsp.handlers").setup()
require "packer.plugins.lsp.null-ls"
