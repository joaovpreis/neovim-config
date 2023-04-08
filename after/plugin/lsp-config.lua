require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "solar_graph"}
})

require'lspconfig'.solargraph.setup{}
require'lspconfig'.lua_ls.setup{}
