require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "solargraph"}
})

require'lspconfig'.solargraph.setup{}
require'lspconfig'.lua_ls.setup{}
