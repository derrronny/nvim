require("mason").setup()
require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
require("lspconfig").lua_ls.setup {}
require("lspconfig").solargraph.setup{}
require("lspconfig").prismals.setup{}
require("lspconfig").eslint.setup{}
require("lspconfig").ts_ls.setup{}
require("lspconfig").emmet_ls.setup{}
require("lspconfig").html.setup{}
require("lspconfig").cssls.setup{}

require('lspconfig').lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'}
      }
    }
  }
})
return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Setup language servers.
      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({capabilities = capabilities})
      lspconfig.eslint.setup({
        on_attach = function(client, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
        capabilities = capabilities
      })
      require("lspconfig").eslint.setup({})
    end,
  },
};
