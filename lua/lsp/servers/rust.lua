local lsp = require("lspconfig")

local capabilities = require("lsp.utils.capabilities")

lsp.rust_analyzer.setup({
    capabilities = capabilities,
    on_attach = function(client)
        client.server_capabilities.semanticTokensProvider = nil
    end,
})
