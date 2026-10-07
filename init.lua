require("core.options")
require("core.keymaps")
require("core.lazy")

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = {
        checkThirdParty = false,
        library = { vim.env.VIMRUNTIME }
      }
    }
  }
})
vim.lsp.enable("lua_ls")

